defmodule Endpoints.Players.XP do
  alias Endpoints.Players.Raw
  alias Api.Errors.NotFound

  def get_players_xp(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Map.take(account, ["expLevel"])
        |> Map.values()
        |> hd()
      end
    end
  end
end
