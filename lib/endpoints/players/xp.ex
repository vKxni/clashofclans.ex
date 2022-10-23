defmodule Endpoints.Players.XP do
  alias Endpoints.Players.Raw

  def get_players_xp(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["expLevel"])
      |> Map.values()
      |> hd()
    end
  end
end
