defmodule Endpoints.Players.Playername do
  alias Endpoints.Players.Raw

  def get_players_name(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["name"])
      |> Map.values()
      |> hd()
    end
  end
end
