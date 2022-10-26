defmodule Clashofclans.Base.Players do
  @moduledoc """
  Basic player module with functions like

  - playername
  - donations,
  - warstars
  """
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
    Donations,
    Clanlevel,
    Clanname,
    Clantag
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

  def players_clanlevel(playertag) do
    Clanlevel.get_players_clanlevel(playertag)
  end

  def players_clanname(playertag) do
    Clanname.get_players_clanname(playertag)
  end

  def players_clantag(playertag) do
    Clantag.get_players_clantag(playertag)
  end
end

defmodule Clashofclans.Base.Clans do
  @moduledoc """
  Basic clan module with functions like

  - clanname,
  - clantag,
  - clanlevel,
  """
  alias Endpoints.Clans.{
    Name,
    Level,
    Location,
    Language,
    Description,
    Type,
    Clanpoints
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

  def clanpoints(clantag) do
    Clanpoints.get_clan_clanpoints(clantag)
  end
end

defmodule Clashofclans.Extended.Players do
  @moduledoc """
  Extended player module with detailed maps, lists and informations
  """
  alias Endpoints.Players.{
    TownhallWeapon,
    Builderhall,
    HighestVersus,
    VersusTrophies,
    Builderbase.VersusWinCount,
    VersusWins,
    Heroes
  }

  def townhallweapon(playertag) do
    TownhallWeapon.get_townhall_weapon(playertag)
  end

  def builderhalllevel(playertag) do
    Builderhall.get_players_builderhall(playertag)
  end

  def highest_versus_trophies(playertag) do
    HighestVersus.get_players_highest_versus(playertag)
  end

  def versus_trophies(playertag) do
    VersusTrophies.get_players_versus_trophies(playertag)
  end

  def versus_win_count(playertag) do
    VersusWinCount.get_versus_win_count(playertag)
  end

  def versuswins(playertag) do
    VersusWins.get_players_versus_wins(playertag)
  end

  def barbariankinglevel(playertag) do
    Heroes.get_level_of_barbarian_king(playertag)
  end

  def archerqueenlevel(playertag) do
    Heroes.get_level_of_archer_queen(playertag)
  end

  def grandwardenlevel(playertag) do
    Heroes.get_level_of_grand_warden(playertag)
  end

  def royalchampionlevel(playertag) do
    Heroes.get_level_of_royal_champion(playertag)
  end

  def battlemachinelevel(playertag) do
    Heroes.get_level_of_battle_machine(playertag)
  end
end

defmodule Clashofclans.Extendend.LegendLeague do
  @moduledoc """
  Extendend and detailed legend league module
  """
  alias Endpoints.Players.LegendLeague.{
    BestSeason,
    CurrentSeason,
    LegendTrophies,
    PreviousSeason
  }

  def best_legend_season(playertag) do
    BestSeason.get_players_best_legend_season(playertag)
  end

  def current_legend_season(playertag) do
    CurrentSeason.get_players_current_legend_season(playertag)
  end

  def legend_trophies(playertag) do
    LegendTrophies.get_players_legend_trophies(playertag)
  end

  def previous_legend_season_rank(playertag) do
    PreviousSeason.get_players_previous_legend_season_rank(playertag)
  end

  def previous_legend_season_trophies(playertag) do
    PreviousSeason.get_players_previous_legend_season_trophies(playertag)
  end

  def previous_legend_season_id(playertag) do
    PreviousSeason.get_players_previous_legend_season_id(playertag)
  end
end

defmodule Clashofclans.Extended.Clans do
  @moduledoc """
  Extended clan module with detailed maps, lists and informations
  """
  alias Endpoints.Clans.{
    Builderbase.VersusTrophies,
    Capital.Raidseason,
    Wars.PublicWarlog,
    Wars.Warfrequency,
    Wars.Warleague,
    Wars.Warwins,
    Wars.Warwinstreak,
    Members,
    Requirements
  }

  def clanversustrophies(clantag) do
    VersusTrophies.get_clan_versus_trophies(clantag)
  end

  def capital_state(clantag) do
    Raidseason.get_capital_state(clantag)
  end

  def capital_attacklog(clantag) do
    Raidseason.get_capital_attacklog(clantag)
  end

  def capital_defense_reward(clantag) do
    Raidseason.get_capital_defensive_reward(clantag)
  end

  def capital_endtime(clantag) do
    Raidseason.get_capital_endtime(clantag)
  end

  def capital_starttime(clantag) do
    Raidseason.get_capital_starttime(clantag)
  end

  def enemy_districts_destroyed(clantag) do
    Raidseason.get_capital_enemy_district_destroyed(clantag)
  end

  def capital_totalloot(clantag) do
    Raidseason.get_capital_total_loot(clantag)
  end

  def capital_totalattacks(clantag) do
    Raidseason.get_capital_total_attacks(clantag)
  end

  def public_warlog(clantag) do
    PublicWarlog.is_clan_log_public(clantag)
  end

  def warfrequency(clantag) do
    Warfrequency.get_clan_warfrequency(clantag)
  end

  def warleague(clantag) do
    Warleague.get_clan_war_league_name(clantag)
  end

  def warwins(clantag) do
    Warwins.get_clan_warwins(clantag)
  end

  def warwinstreak(clantag) do
    Warwinstreak.get_clan_warwinstreak(clantag)
  end

  def clanmember_list(clantag) do
    Members.get_clan_member_list(clantag)
  end

  def clanmember_count(clantag) do
    Members.get_clan_member_number(clantag)
  end

  def required_th_level(clantag) do
    Requirements.get_required_townhall_level(clantag)
  end

  def required_trophies(clantag) do
    Requirements.get_required_trophies(clantag)
  end

  def required_versus_trophies(clantag) do
    Requirements.get_required_versus_trophies(clantag)
  end
end

defmodule Clashofclans.Leagues do
  @moduledoc """
  Returns a list and map with all informations about a specific league

  legend league -> unranked
  """
  alias Endpoints.Leagues.Leagues

  def legend_league do
    Leagues.get_legend_league()
  end

  def titan_league_three do
    Leagues.get_titan_league_three()
  end

  def titan_league_two do
    Leagues.get_titan_league_two()
  end

  def titan_league_one do
    Leagues.get_titan_league_one()
  end

  def champion_league_three do
    Leagues.get_champion_league_three()
  end

  def champion_league_two do
    Leagues.get_champion_league_two()
  end

  def champion_league_one do
    Leagues.get_champion_league_one()
  end

  def master_league_three do
    Leagues.get_master_league_three()
  end

  def master_league_two do
    Leagues.get_master_league_two()
  end

  def master_league_one do
    Leagues.get_master_league_one()
  end

  def crystal_league_three do
    Leagues.get_crystal_league_three()
  end

  def crystal_league_two do
    Leagues.get_crystal_league_two()
  end

  def crystal_league_one do
    Leagues.get_crystal_league_one()
  end

  def gold_league_three do
    Leagues.get_gold_league_three()
  end

  def gold_league_two do
    Leagues.get_gold_league_two()
  end

  def gold_league_one do
    Leagues.get_gold_league_one()
  end

  def silver_league_three do
    Leagues.get_silver_league_three()
  end

  def silver_league_two do
    Leagues.get_silver_league_two()
  end

  def silver_league_one do
    Leagues.get_silver_league_one()
  end

  def bronze_league_three do
    Leagues.get_bronze_league_three()
  end

  def bronze_league_two do
    Leagues.get_bronze_league_two()
  end

  def bronze_league_one do
    Leagues.get_bronze_league_one()
  end

  def unranked do
    Leagues.get_unranked_league()
  end
end

defmodule Clashofclans.GoldPass do
  @moduledoc """
  Displays information about the current gold pass season
  """
  alias Endpoints.Goldpass

  def goldpass_starttime do
    Goldpass.get_start_time()
  end

  def goldpass_endtime do
    Goldpass.get_end_time()
  end
end
