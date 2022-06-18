from flask import Flask
from flask import (request,
                   render_template,
                   jsonify)

from controllers import show_mash

app = Flask(__name__)

@app.route("/", methods=["GET"])
def home():
    """"Route to home page"""
    shows, selected_players = show_mash.home_handler()
    return render_template('index.html', 
                            shows=shows, 
                            selected_players=selected_players)

@app.route("/ranking", methods=["GET"])
def ranking():
    """"Route to home page"""
    shows, selected_players = show_mash.home_handler()
    return render_template('ranking.html',
                            shows=shows, 
                            selected_players=selected_players)

@app.route("/get_shows", methods=["POST"])
def get_shows():
    """Route to fetch all the shows"""
    return jsonify(shows=show_mash.get_all_show())


@app.route("/new_players", methods=["POST"])
def new_players():
    """"Route to return random two players"""
    return jsonify(selected_players=show_mash.select_players())



@app.route("/vote", methods=["POST"])
def vote():
    """Route to handle voting"""
    data = request.get_json()
    winner_id = data.get("winner_id")
    looser_id = data.get("looser_id")
    if not winner_id or not looser_id :
        return jsonify(status=False,
                       winner_elo=0,
                       losser_elo=0,
                       message="Please vote.")
    win_elo, lose_elo = show_mash.vote_handler(winner_id, looser_id)
    return jsonify(status=False,
                   winner_elo=win_elo,
                   losser_elo=lose_elo)


if __name__ == "__main__":

    app.run(host="0.0.0.0", 
            port=5000,debug=True)