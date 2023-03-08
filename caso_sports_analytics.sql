CREATE SCHEMA sports_analytics;

USE sports_analytics;

CREATE TABLE IF NOT EXISTS seasons (
season_id VARCHAR(45) NOT NULL, 
season VARCHAR(45),
PRIMARY KEY (season_id));

CREATE TABLE IF NOT EXISTS teams (
team_id VARCHAR(45) NOT NULL, 
team VARCHAR(60),
PRIMARY KEY (team_id));

CREATE TABLE IF NOT EXISTS stats (
id_stat_team_season VARCHAR(45) NOT NULL,
team_id VARCHAR(45), 
season_id VARCHAR(45),
GP INT,
W INT,
L INT,
win_percent FLOAT,
minutes FLOAT,
PTS FLOAT,
FGM FLOAT,
FGA FLOAT,
FG_percent FLOAT,
three_PM FLOAT,
three_PA FLOAT,
three_point_percent FLOAT,
FTM FLOAT,
FTA FLOAT,
FT_percent FLOAT,
OREB FLOAT,
DREB FLOAT,
REB FLOAT,
AST FLOAT,
TOV FLOAT,
STL FLOAT,
BLK FLOAT,
BLKA FLOAT,
PF FLOAT,
PFD FLOAT,
plus_minus FLOAT,
PRIMARY KEY (id_stat_team_season),
CONSTRAINT `fk_season_stats`
FOREIGN KEY (season_id)
REFERENCES seasons (season_id),
CONSTRAINT `fk_team_stats`
FOREIGN KEY (team_id)
REFERENCES teams (team_id)
ON UPDATE CASCADE);





 



