defmodule Endpoints.Players.Warstars do
  alias Endpoints.Players.Raw

  def get_players_warstars(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["warStars"])
      |> Map.values()
      |> hd()
    end
  end
end
