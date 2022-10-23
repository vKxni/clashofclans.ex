defmodule Endpoints.Players.Builderhall do
  alias Endpoints.Players.Raw

  def get_players_builderhall(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["builderHallLevel"])
      |> Map.values()
      |> hd()
    end
  end
end
