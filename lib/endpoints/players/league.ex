defmodule Endpoints.Players.League do
  alias Endpoints.Players.Raw
  alias Api.Errors.NotFound

  def get_league_of_player(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Kernel.get_in(account, ["league", "name"])
      end
    end
  end
end
