defmodule Endpoints.Players.VersusTrophies do
  alias Endpoints.Players.Raw

  def get_players_versus_trophies(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["versusTrophies"])
      |> Map.values()
      |> hd()
    end
  end
end
