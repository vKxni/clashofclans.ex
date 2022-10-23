defmodule Endpoints.Players.Attackwins do
  alias Endpoints.Players.Raw

  def get_players_attack_wins(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["attackWins"])
      |> Map.values()
      |> hd()
    end
  end
end
