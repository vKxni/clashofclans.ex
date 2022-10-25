defmodule Player.GetDataTest do
  use ExUnit.Case
  alias Clashofclans.Api

  test "get the raw player information of a tag" do
    assert Client.get_player_data("#V9P9LCLP")
  end
end
