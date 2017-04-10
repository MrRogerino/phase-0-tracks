nba = { #teams listed in order of best record to worst record, as of 4.10.2017
  western_conference: {
    divisions: {
      pacific: [
        "Warriors",
        "Clippers",
        "Kings",
        "Lakers",
        "Suns"
        ],
      northwest: [
        "Jazz",
        "Thunder",
        "Trailblazers",
        "Nuggets",
        "Timberwolves"
        ],
      southwest: [
        "Spurs",
        "Rockets",
        "Grizzlies",
        "Pelicans",
        "Mavericks"
        ]
    },
  },
  eastern_conference: {
    divisions: {
      atlantic: [
        "Celtics",
        "Raptors",
        "Knicks",
        "76ers",
        "Nets"
        ],
      central: [
        "Cavaliers",
        "Bucks",
        "Pacers",
        "Bulls",
        "Pistons"
        ],
      southeast: [
        "Wizards",
        "Hawks",
        "Heat",
        "Hornets",
        "Magic"
        ]
    },
  },
}

#sample driver code
nba[:western_conference][:divisions][:northwest] #returns list of teams in the Northwest Division
nba[:eastern_conference][:divisions][:southeast] #returns list of teams in the Southeast Division
nba[:western_conference][:divisions][:pacific].reverse #returns Pacific Division teams in order of worst record to best
nba[:western_conference][:divisions][:southwest].keep_if {|team| team == "Spurs" or team == "Rockets" or team == "Mavericks"} #returns all Texan teams
nba[:eastern_conference][:divisions][:central][0] #returns LeBron James' team
nba[:western_conference][:divisions][:pacific][3] #returns my favorite team
