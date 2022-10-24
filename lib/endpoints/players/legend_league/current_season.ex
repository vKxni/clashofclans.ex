defmodule Endpoints.Players.LegendLeague.CurrentSeason do
  alias Endpoints.Players.Raw
  alias Api.Errors.NotFound

  def get_players_current_legend_season(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Kernel.get_in(account, ["legendStatistics", "currentSeason"])
      end
    end
  end
end
