defmodule Endpoints.Players.League do
  alias Endpoints.Players.Raw

  def get_league_of_player(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Kernel.get_in(account, ["league", "name"])
    end
  end
end
