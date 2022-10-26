defmodule Endpoints.Players.Clanlevel do
  alias Endpoints.Players.Raw

  def get_players_clanlevel(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Kernel.get_in(account, ["clan", "clanLevel"])
    end
  end
end
