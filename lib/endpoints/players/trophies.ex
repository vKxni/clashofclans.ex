defmodule Endpoints.Players.Trophies do
  alias Endpoints.Players.Raw

  def get_players_trophies(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        {:error, "Player is invalid, banned or does not exist. "}
      else
        Map.take(account, ["trophies"])
        |> Map.values()
        |> hd()
      end
    end
  end
end
