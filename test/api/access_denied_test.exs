defmodule Api.AccessDeniedTest do
  use ExUnit.Case

  test "simulate an access denied error" do
    {:error, response} = Api.Errors.AccessDenied.access_denied(%{"reason" => "accessDenied"})
    assert response == "The clans public information is currently not available"
  end
end
