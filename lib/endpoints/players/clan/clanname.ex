defmodule Endpoints.Players.Clanname do
  alias Endpoints.Players.Raw

  def get_players_clanname(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Kernel.get_in(account, ["clan", "name"])
    end
  end
end
