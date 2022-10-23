defmodule Endpoints.Players.LegendLeague.PreviousSeason do
  alias Endpoints.Players.Raw

  def get_players_previous_legend_season_rank(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Kernel.get_in(account, ["legendStatistics", "previousSeason", "rank"])
    end
  end

  def get_players_previous_legend_season_trophies(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Kernel.get_in(account, ["legendStatistics", "previousSeason", "trophies"])
    end
  end

  def get_players_previous_legend_season_id(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Kernel.get_in(account, ["legendStatistics", "previousSeason", "id"])
    end
  end
end
