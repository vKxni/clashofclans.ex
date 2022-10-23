defmodule Endpoints.Players.HighestVersus do
  alias Endpoints.Players.Raw

  def get_players_highest_versus(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["bestVersusTrophies"])
      |> Map.values()
      |> hd()
    end
  end
end
