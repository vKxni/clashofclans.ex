defmodule Endpoints.Players.Clanname do
  alias Endpoints.Players.Raw
  alias Api.Errors.NotFound

  def get_players_clanname(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Kernel.get_in(account, ["clan", "name"])
      end
    end
  end
end
