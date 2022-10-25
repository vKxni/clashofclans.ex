defmodule ApiTest do
  use ExUnit.Case
  alias Clashofclans.Client

  test "fetch player data" do
    {:ok, response} = Client.get_player_data("#Y0CG802QR")
    assert response
  end

  test "fetch clan data" do
    {:ok, response} = Client.get_clan_data("#2QPQL0VP0")
    assert response
  end
end
