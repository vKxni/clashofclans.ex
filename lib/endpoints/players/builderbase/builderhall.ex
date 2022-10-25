defmodule Endpoints.Players.Builderhall do
  alias Endpoints.Players.Raw

  def get_players_builderhall(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["builderHallLevel"] == nil do
        {:error, "Player has no Builder Hall"}
      else
        Map.take(account, ["builderHallLevel"])
        |> Map.values()
        |> hd()
      end
    end
  end
end
