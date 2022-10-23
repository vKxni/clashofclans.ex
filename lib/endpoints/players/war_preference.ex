defmodule Endpoints.Players.WarPreference do
  alias Endpoints.Players.Raw

  def get_players_war_preference(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["warPreference"])
      |> Map.values()
      |> hd()
    end
  end
end
