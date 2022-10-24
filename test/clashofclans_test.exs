defmodule ClashofclansTest do
  use ExUnit.Case
  doctest Clashofclans

  test "if api token is set" do
    assert Application.fetch_env(:clashofclans, :api_key) != nil
  end
end
