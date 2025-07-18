import requests

subscription_key = "ee7fcd5c543f4485ba2a48856fc7ece9"
headers = {
    "Ocp-Apim-Subscription-Key": subscription_key
}

team_ids = [
    "t186", "t178", "t177", "t179", "t188", "t181", "t210", "t185", "t182", "t180", 
    "t192", "t187", "t213", "t212", "t191", "t183", "t194", "t195", "t190", "t193"
]  # All La Liga team Opta IDs (update if needed)

season_number = 2024
competition_id = "23"
sql_output = []

for team_id in team_ids:
    url = f"https://apim.laliga.com/webview/api/web/seasons/opta/{season_number}/competitions/opta/{competition_id}/teams/opta/{team_id}/players/stats?contentLanguage=en"

    response = requests.get(url, headers=headers)
    if response.status_code != 200:
        print(f"Failed to fetch {team_id}: {response.status_code}")
        continue

    data = response.json()
    players = data.get("player_stats", [])

    for player in players:
        try:
            player_name = player.get("extra_info", {}).get("name", "")
            stats=player.get("stats", [])
            stat_map = {s["name"]: s["stat"] for s in stats}

            matches_played = stat_map.get("games_played", 0)
            matches_started = stat_map.get("starts", 0)
            minutes_played = stat_map.get("time_played", 0)
            goals = stat_map.get("goals", 0)
            assists = stat_map.get("goals", 0)
            own_goals = stat_map.get("own_goal_scored", 0)
            clean_sheets = stat_map.get("clean_sheets", 0)
            saves = stat_map.get("saves_made", 0)
            penalty_misses = 0
            penalty_saved = stat_map.get("penalties_faced", 0)  # or use specific save field
            yellow_cards = stat_map.get("yellow_cards", 0)
            red_cards = stat_map.get("red_cards", 0)
            bonus_points = 0  # Optional/custom calc
            total_points = 0  # Optional/custom calc

            sql = (
                f"IF EXISTS (SELECT 1 FROM Players WHERE Name = '{player_name}')\n"
                f"BEGIN\n"
                f"    INSERT INTO PlayerStats (\n"
                f"        PlayerId, SeasonNumber, MatchesPlayed, MatchesStarted, MinutesPlayed,\n"
                f"        GoalsScored, Assists, OwnGoals, CleanSheets, Saves,\n"
                f"        PenaltyMisses, PenaltySaved, YellowCards, RedCards, BonusPoints, TotalPoints\n"
                f"    )\n"
                f"    SELECT Id, {season_number}, {matches_played}, {matches_started}, {minutes_played},\n"
                f"           {goals}, {assists}, {own_goals}, {clean_sheets}, {saves},\n"
                f"           {penalty_misses}, {penalty_saved}, {yellow_cards}, {red_cards}, {bonus_points}, {total_points}\n"
                f"    FROM Player WHERE Name = '{player_name}';\n"
                f"END"
            )

            
            sql_output.append(sql.strip())
        except Exception as e:
            print(f"Error processing player: {e}")

# Output all SQL insert statements to a file
with open("insert_player_stats_2024.sql", "w", encoding="utf-8") as f:
    f.write("\n\n".join(sql_output))

print(f"✅ Generated {len(sql_output)} SQL INSERT statements.")
