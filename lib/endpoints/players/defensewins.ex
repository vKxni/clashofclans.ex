defmodule Endpoints.Players.Defensewins do
  alias Endpoints.Players.Raw

  def get_players_defense_wins(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["defenseWins"])
      |> Map.values()
      |> hd()
    end
  end
end
