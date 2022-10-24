defmodule Api.InvalidIp do
  use ExUnit.Case

  test "simulate an invalid api token error" do
    {:error, response} = Api.Errors.InvalidIp.invalid_ip(%{"reason" => "accessDenied.InvalidIp"})
    assert response == "The IP address is not whitelisted."
  end
end
