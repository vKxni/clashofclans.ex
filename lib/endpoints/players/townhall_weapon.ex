defmodule Endpoints.Players.TownhallWeapon do
  alias Endpoints.Players.Raw
  alias Api.Errors.NotFound

  def get_townhall_weapon(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Map.take(account, ["townHallWeaponLevel"])
      end
    end
  end
end
