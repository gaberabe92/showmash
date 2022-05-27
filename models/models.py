import mysql.connector

from conf import (HOST, USER,
                  PASSWORD, DATABASE)

class TVShows():
    """Database model to handle TVShows query"""
    def __init__(self):
        self.db = mysql.connector.connect(
            host=HOST,
            user=USER,
            password=PASSWORD,
            database=DATABASE,
            auth_plugin='mysql_native_password'
            )
    def get_all(self):
        """Get all the shows"""
        cursor = self.db.cursor(dictionary=True)
        cursor.execute("SELECT * FROM shows ORDER BY show_elo desc")
        result = cursor.fetchall()
        # print(result[0])
        return result
    
    def get_random_play(self):
        """Get a random player from DB"""
        cursor = self.db.cursor(dictionary=True)
        cursor.execute("SELECT * FROM shows ORDER BY RAND() LIMIT 1")
        result = cursor.fetchone()
        return result
   
    def get_show(self, show_id):
        """"Get show details using show_id"""
        cursor = self.db.cursor(dictionary=True)
        query = "SELECT * FROM shows where show_id='%s' " % show_id
        cursor.execute(query)
        result = cursor.fetchone()
        return result
    
    def update_winner_show(self, show_id, elo, wins, match):
        """Update the winner details in db"""
        cursor = self.db.cursor(dictionary=True)
        query = "UPDATE shows SET show_elo = '%s', wins = '%s', matches='%s' WHERE show_id = '%s'" % (elo, wins, match, show_id)
        cursor.execute(query)
        self.db.commit()
        return True
    
    def update_looser_show(self, show_id, elo, match):
        """Update the looser details in db"""
        cursor = self.db.cursor(dictionary=True)
        query = "UPDATE shows SET show_elo = '%s', matches='%s' WHERE show_id = '%s'" % (elo, match, show_id)
        cursor.execute(query)
        self.db.commit()
        return True

