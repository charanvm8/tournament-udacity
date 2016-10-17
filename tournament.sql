-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

create table players(
    id serial primary key,
    name text
);

create table matches(
    match_id serial primary key,
    winner serial references players(id),
    loser serial references players(id)
);


create view player_wins as
    select players.id, coalesce(count(winner),0) as wins
    from players left join matches
    on players.id=matches.winner
    group by players.id
    order by wins desc;

create view player_losses as
    select players.id, coalesce(count(loser),0)as losses
    from players left join matches
    on players.id=matches.loser
    group by players.id
    order by losses desc;


create view player_results as
    select player_wins.id as id,name,wins,wins+losses as matches
    from players,player_wins,player_losses
    where players.id=player_wins.id and player_losses.id=player_wins.id
    order by wins desc;

