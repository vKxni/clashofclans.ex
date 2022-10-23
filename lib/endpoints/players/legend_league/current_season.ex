defmodule Endpoints.Players.LegendLeague.CurrentSeason do
  alias Endpoints.Players.Raw

  def get_players_current_legend_season(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Kernel.get_in(account, ["legendStatistics", "currentSeason"])
    end
  end
end
