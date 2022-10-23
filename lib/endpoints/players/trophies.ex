defmodule Endpoints.Players.Trophies do
  alias Endpoints.Players.Raw

  def get_players_trophies(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["trophies"])
      |> Map.values()
      |> hd()
    end
  end
end
