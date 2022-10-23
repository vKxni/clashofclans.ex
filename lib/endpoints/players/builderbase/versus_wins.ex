defmodule Endpoints.Players.VersusWins do
  alias Endpoints.Players.Raw

  def get_players_versus_wins(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["versusBattleWins"])
      |> Map.values()
      |> hd()
    end
  end
end
