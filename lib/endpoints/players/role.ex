defmodule Endpoints.Players.Role do
  alias Endpoints.Players.Raw

  def get_players_clan_role(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        {:error, "Player is invalid, banned or does not exist. "}
      else
      Kernel.get_in(account, ["role"])
    end
  end
  end
end
