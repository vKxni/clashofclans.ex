defmodule Endpoints.Players.TownhallWeapon do
  alias Endpoints.Players.Raw

  def get_townhall_weapon(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        {:error, "Player is invalid, banned or does not exist. "}
      else
        Map.take(account, ["townHallWeaponLevel"])
      end
    end
  end
end
