defmodule Endpoints.Players.TownhallWeapon do
  alias Endpoints.Players.Raw

  def get_townhall_weapon(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["townHallWeaponLevel"])
    end
  end
end
