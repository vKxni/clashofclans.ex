defmodule Endpoints.Players.LegendLeague.BestSeason do
  alias Endpoints.Players.Raw

  def get_players_best_legend_season(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Kernel.get_in(account, ["legendStatistics", "bestSeason"])
    end
  end
end
