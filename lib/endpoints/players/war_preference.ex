defmodule Endpoints.Players.WarPreference do
  alias Endpoints.Players.Raw
  alias Api.Errors.NotFound

  def get_players_war_preference(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Map.take(account, ["warPreference"])
        |> Map.values()
        |> hd()
      end
    end
  end
end
