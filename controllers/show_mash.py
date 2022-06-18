from models.models import TVShows

def vote_handler(winner_id, looser_id):
    """Handle the vote"""
    # Get the
    winner = TVShows().get_show(winner_id)
    looser = TVShows().get_show(looser_id)

    winner_elo, winner_times = winner["show_elo"], winner["wins"]
    looser_elo, looser_times = looser["show_elo"], looser["wins"]

    win_elo = calculate_elo(1, float(winner_elo), float(looser_elo), int(winner_times))
    lose_elo = calculate_elo(0, float(looser_elo), float(winner_elo), int(looser_times))

    # Update Winner details
    winner_times = winner_times + 1
    matches = winner["matches"] + 1
    TVShows().update_winner_show(winner_id, win_elo, winner_times, matches)

    # Update looser_details
    matches = looser["matches"] + 1
    TVShows().update_looser_show(looser_id, lose_elo, matches)

    shows = get_all_show()

    for show in shows:
        if show["show_id"] == winner_id:
            print (show["rank"], winner_id)
            win_elo = show["rank"]
        if show["show_id"] == looser_id:
            lose_elo = show["rank"]
    print (win_elo, lose_elo)
    return win_elo, lose_elo

def home_handler():
    """"Return all shows and randoms two players"""
    shows = get_all_show()
    selected_players = select_players()
    print (selected_players)
    for show in shows:
        for player in selected_players:
            print (player)
            if show["show_id"] == player["show_id"]:
                player["rank"] = show["rank"]
        
    return shows, selected_players


def get_all_show():
    """"Return all shows"""
    shows = TVShows().get_all()
    shows = sorted(shows, key=lambda d: d['show_elo'], reverse=True) 
    for i, dic in enumerate(shows):
        dic["rank"] = i+1
    return shows

def select_players():
    """Selected random two player"""
    selected_players = [TVShows().get_random_play(), TVShows().get_random_play()]
    shows = get_all_show()
    for show in shows:
        for player in selected_players:
            if show["show_id"] == player["show_id"]:
                player["rank"] = show["rank"]
    return selected_players


def calculate_elo(Wa, Ra, Rb, times):
    """Calculate the elo
    (int)Wa = 1 if a is winner else 0
        (float)Ra - elo rate of a
        (float)Rb - elo rate of b
        (int)K - coeff depends on Ra and times
    """
    Ea = 1 / (1 + 10 ** ((Rb - Ra) / 400))
    if Ra > 2000:
        K = 10
    elif times > 30:
        K = 15
    else:
        K = 30
    return Ra + K * (Wa - Ea)