defmodule Clashofclans.Base.Players do
  alias Endpoints.Players.{
    Playername,
    Townhall,
    Warstars,
    XP,
    Trophies,
    League,
    HighestTrophies,
    Role,
    WarPreference,
    Attackwins,
    Defensewins,
    Donations
  }

  def playername(playertag) do
    Playername.get_players_name(playertag)
  end

  def townhall(playertag) do
    Townhall.get_players_townhall(playertag)
  end

  def xp(playertag) do
    XP.get_players_xp(playertag)
  end

  def warstars(playertag) do
    Warstars.get_players_warstars(playertag)
  end

  def trophies(playertag) do
    Trophies.get_players_trophies(playertag)
  end

  def league(playertag) do
    League.get_league_of_player(playertag)
  end

  def highest_trophies(playertag) do
    HighestTrophies.get_players_highest_trophies(playertag)
  end

  def clanrole(playertag) do
    Role.get_players_clan_role(playertag)
  end

  def donations(playertag) do
    Donations.get_players_donations(playertag)
  end

  def warpreference(playertag) do
    WarPreference.get_players_war_preference(playertag)
  end

  def attackwins(playertag) do
    Attackwins.get_players_attack_wins(playertag)
  end

  def defensewins(playertag) do
    Defensewins.get_players_defense_wins(playertag)
  end
end

defmodule Clashofclans.Base.Clans do
  alias Endpoints.Clans.{
    Name,
    Level,
    Location,
    Language,
    Description,
    Type
  }

  def clanname(clantag) do
    Name.get_clan_name(clantag)
  end

  def clanlevel(clantag) do
    Level.get_clan_level(clantag)
  end

  def clanlocationname(clantag) do
    Location.get_clan_location_name(clantag)
  end

  def clanlanguage(clantag) do
    Language.get_clan_language(clantag)
  end

  def clandescription(clantag) do
    Description.get_clan_description(clantag)
  end

  def clantype(clantag) do
    Type.get_clan_type(clantag)
  end
end
