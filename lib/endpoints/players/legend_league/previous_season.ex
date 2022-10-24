defmodule Endpoints.Players.LegendLeague.PreviousSeason do
  alias Endpoints.Players.Raw
  alias Api.Errors.NotFound

  def get_players_previous_legend_season_rank(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Kernel.get_in(account, ["legendStatistics", "previousSeason", "rank"])
      end
    end
  end

  def get_players_previous_legend_season_trophies(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Kernel.get_in(account, ["legendStatistics", "previousSeason", "trophies"])
      end
    end
  end

  def get_players_previous_legend_season_id(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Kernel.get_in(account, ["legendStatistics", "previousSeason", "id"])
      end
    end
  end
end
