# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ligue1 = Championnat.create(name:'Ligue 1')
ligue2 = Championnat.create(name:'Ligue 2')
premier_league = Championnat.create(name:'Premier league')
bundesliga = Championnat.create(name:'Bundesliga')

Match.create(
    matchday: 1,
    home_team: 'PSG',
    home_prevision: 30.0,
    home_score: 1,
    away_team: 'OL',
    away_prevision: 30.0,
    away_score: 1,
    draw_prevision: 40.0,
    championnat: ligue1
)

Match.create(
    matchday: 1,
    home_team: 'OM',
    home_prevision: 12.0,
    home_score: 2,
    away_team: 'ASSE',
    away_prevision: 45.0,
    away_score: 0,
    draw_prevision: 40.0,
    championnat: ligue1
)

Match.create(
    matchday: 1,
    home_team: 'Niort',
    home_prevision: 30.0,
    home_score: 2,
    away_team: 'Nancy',
    away_prevision: 30.0,
    away_score: 0,
    draw_prevision: 40.0,
    championnat: ligue2
)

Match.create(
    matchday: 2,
    home_team: 'Nancy',
    home_prevision: 55.0,
    home_score: 3,
    away_team: 'Niort',
    away_prevision: 45.0,
    away_score: 2,
    draw_prevision: 40.0,
    championnat: ligue2
)

Match.create(
    matchday: 4,
    home_team: 'Munich',
    home_prevision: 20.0,
    home_score: 2,
    away_team: 'Berlin',
    away_prevision: 21.0,
    away_score: 1,
    draw_prevision: 40.0,
    championnat: bundesliga
)

Match.create(
    matchday: 1,
    home_team: 'Arsenal',
    home_prevision: 20.0,
    home_score: 3,
    away_team: 'Manchester city',
    away_prevision: 21.0,
    away_score: 1,
    draw_prevision: 40.0,
    championnat: premier_league
)

Match.create(
    matchday: 1,
    home_team: 'Manchester United',
    home_prevision: 20.0,
    home_score: 1,
    away_team: 'Liverpool',
    away_prevision: 21.0,
    away_score: 2,
    draw_prevision: 40.0,
    championnat: premier_league
)

Match.create(
    matchday: 1,
    home_team: 'Chelsea',
    home_prevision: 20.0,
    home_score: 2,
    away_team: 'Everton',
    away_prevision: 21.0,
    away_score: 0,
    draw_prevision: 40.0,
    championnat: premier_league
)

Match.create(
    matchday: 2,
    home_team: 'Liverpool',
    home_prevision: 20.0,
    home_score: 1,
    away_team: 'Arsenal',
    away_prevision: 21.0,
    away_score: 3,
    draw_prevision: 40.0,
    championnat: premier_league
)

Match.create(
    matchday: 2,
    home_team: 'Manchester City',
    home_prevision: 20.0,
    home_score: 2,
    away_team: 'Manchester United',
    away_prevision: 21.0,
    away_score: 1,
    draw_prevision: 40.0,
    championnat: premier_league
)

Match.create(
    matchday: 2,
    home_team: 'Everton',
    home_prevision: 20.0,
    home_score: 2,
    away_team: 'Chelsea',
    away_prevision: 21.0,
    away_score: 1,
    draw_prevision: 40.0,
    championnat: premier_league
)

Match.create(
    matchday: 3,
    home_team: 'Chelsea',
    home_prevision: 20.0,
    home_score: 2,
    away_team: 'Liverpool',
    away_prevision: 21.0,
    away_score: 1,
    draw_prevision: 40.0,
    championnat: premier_league
)

Match.create(
    matchday: 3,
    home_team: 'Manchester City',
    home_prevision: 20.0,
    home_score: 1,
    away_team: 'Everton',
    away_prevision: 21.0,
    away_score: 0,
    draw_prevision: 40.0,
    championnat: premier_league
)

Match.create(
    matchday: 3,
    home_team: 'Arsenal',
    home_prevision: 20.0,
    home_score: 1,
    away_team: 'Manchester United',
    away_prevision: 21.0,
    away_score: 1,
    draw_prevision: 40.0,
    championnat: premier_league
)


Match.create(
    matchday: 4,
    home_team: 'Everton',
    home_prevision: 20.0,
    home_score: 0,
    away_team: 'Manchester City',
    away_prevision: 21.0,
    away_score: 1,
    draw_prevision: 40.0,
    championnat: premier_league
)

Match.create(
    matchday: 4,
    home_team: 'Manchester United',
    home_prevision: 20.0,
    home_score: 2,
    away_team: 'Chelsea',
    away_prevision: 21.0,
    away_score: 1,
    draw_prevision: 40.0,
    championnat: premier_league
)

Match.create(
    matchday: 4,
    home_team: 'Arsenal',
    home_prevision: 20.0,
    home_score: 2,
    away_team: 'Liverpool',
    away_prevision: 21.0,
    away_score: 0,
    draw_prevision: 40.0,
    championnat: premier_league
)
