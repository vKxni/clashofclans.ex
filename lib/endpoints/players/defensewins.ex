defmodule Endpoints.Players.Defensewins do
  alias Endpoints.Players.Raw
  alias Api.Errors.NotFound

  def get_players_defense_wins(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Map.take(account, ["defenseWins"])
        |> Map.values()
        |> hd()
      end
    end
  end
end
