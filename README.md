# ShowMash

Webapp written in Python with the Flask Framework to let two TV series compete against each other in a battle, where the user has to choose the better of the two shows and they are then ranked.

## Why ShowMash?

I took as a basis the idea of Marc Zuckerberg and his student platform Facemash. He came up with the idea of rating women using an algorithm called ELO, which was first created to rate chess players based on their wins and losses against other players. This inspired me to implement the same but with TV shows.

## What problem does the project solve?

Instead of rating each tv show individually and thus arriving at a ranking, i think it's more meaningful if two tv shows are compared and you have to choose one. The ranking that is given is more competitive and serves as an additional tool to the ratings in IMDB with ranking from 1 to 10. The TV shows are now rated with a more objective measure.

## What makes the project do?

I took the top 250 tv shows from idbm and in my project I let two tv shows compete against each other and this is how I got the rating.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [To-Dos](#to-dos)
- [Support](#support)
- [Contributing](#contributing)

## Installation

These instructions will get you a copy of the project up and running on your local machine for development purposes. The project is not yet production-ready.

### Prerequisites

- [Python](https://www.python.org/) - Version 3.9+
- [Python Virtualenv](https://docs.python.org/3/tutorial/venv.html) - Python Virtualenv
- [MySQL](https://www.mysql.com/) - Database with credentials and writing permissions

### Development Environment

1. clone this repository & cd into it

```sh
git clone git@github.com:gaberabe92/showmash.git
cd showmash
```

2. Import facemash.sql into your database

3. Set your database details in "conf.py" for example:

```python
HOST="localhost"
USER="showmash"
PASSWORD="showmash"
DATABASE="showmash"
```

4. Create a virtual environment & activate it

```sh
python -m venv .env
source .venv/bin/activate
```

5. Install all the requirements

```sh
pip install -r requirements.txt
```

6. Run FaceMash

```sh
python app.py
```

7. Open FaceMash in Browser

```sh
http://localhost:5000
```

## Usage

- `scraper.py` to download the TV Show data including image covers and write it to the database with a starting ELO of 400
- `conf.py` to store the MySQL database information
- `app.py` main entry point of flask app that contains all the API

## To-Dos

- Add a function with the possibility to skip the battle if neither of the tv shows are known
- Make production-ready for deployment

## Support

Please [open an issue](https://github.com/gaberabe92/showmash/issues/new) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/gaberabe92/showmash/compare).
