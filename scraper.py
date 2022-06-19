import json
import shutil
import time

from bs4 import BeautifulSoup
import requests
import re

import mysql.connector



# Download IMDB's Top 250 data
url = 'https://www.imdb.com/chart/toptv/?ref_=nv_tvv_250'
response = requests.get(url)
soup = BeautifulSoup(response.text, 'lxml')

movies = soup.select('td.titleColumn')
links = [a.attrs.get('href') for a in soup.select('td.titleColumn a')]
crew = [a.attrs.get('title') for a in soup.select('td.titleColumn a')]
ratings = [b.attrs.get('data-value') for b in soup.select('td.posterColumn span[name=ir]')]
votes = [b.attrs.get('data-value') for b in soup.select('td.ratingColumn strong')]

imdb = []

# Store each item into dictionary (data), then put those into a list (imdb)
for index in range(0, len(movies)):
    # Seperate movie into: 'place', 'title', 'year'
    movie_string = movies[index].get_text()
    movie = (' '.join(movie_string.split()).replace('.', ''))
    movie_title = movie[len(str(index))+1:-7]
    year = re.search('\((.*?)\)', movie_string).group(1)
    place = movie[:len(str(index))-(len(movie))]
    data = {"movie_title": movie_title,
            "year": year,
            "place": place,
            "star_cast": crew[index],
            "rating": ratings[index],
            "vote": votes[index],
            "link": links[index]}
    imdb.append(data)

mydb = mysql.connector.connect(
  host="localhost",
  user="showmash",
  password="showmash",
  database="showmash",
  auth_plugin='mysql_native_password'
)

def download_image(movie_id):
    url = "http://www.omdbapi.com/?i=%s&apikey=" % movie_id
    payload={}
    headers = {}
    response = requests.request("GET", url, headers=headers, data=payload)
    data = json.loads(response.text)
    print(response.text)
    poster = data.get("Poster")

    response = requests.get(poster, stream=True)
    image_name = "images/" + movie_id + ".jpg"
    with open(image_name, 'wb') as out_file:
        shutil.copyfileobj(response.raw, out_file)
    del response
    return True
    

for item in imdb:
    print (item)
    movie_id = item["link"].replace("/title/", "").replace("/", "")
    download_image(movie_id)
    time.sleep(1)
    image_id = movie_id + ".jpg"
    movie_link = "https://www.imdb.com" + item["link"]
    query = 'INSERT INTO shows  (show_id, show_name, show_elo, show_image, show_link) values ("%s", "%s", "%s", "%s", "%s")' % (movie_id, item['movie_title'], 400, image_id, movie_link)
    mycursor = mydb.cursor()
    mycursor.execute(query)
    mydb.commit()
  