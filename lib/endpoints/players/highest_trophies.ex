defmodule Endpoints.Players.HighestTrophies do
  alias Endpoints.Players.Raw

  @spec get_players_highest_trophies(String.t()) :: integer()
  def get_players_highest_trophies(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["bestTrophies"])
      |> Map.values()
      |> hd()
    end
  end
end
