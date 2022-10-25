defmodule Endpoints.Players.LegendLeague.LegendTrophies do
  alias Endpoints.Players.Raw

  def get_players_legend_trophies(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == nil do
        {:error, "Player is invalid, banned or hasn't been to Legends League yet. "}
      else
        Kernel.get_in(account, ["legendStatistics", "legendTrophies"])
      end
    end
  end
end
