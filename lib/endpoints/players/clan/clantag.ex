defmodule Endpoints.Players.Clantag do
  alias Endpoints.Players.Raw

  def get_players_clantag(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Kernel.get_in(account, ["clan", "tag"])
    end
  end
end
