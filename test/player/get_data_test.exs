defmodule Player.GetDataTest do
  use ExUnit.Case

  test "get the raw player information of a tag" do
    assert Clashofclans.Client.get_player_data("#V9P9LCLP")
  end
end
