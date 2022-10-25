defmodule Api.NotFoundTest do
  use ExUnit.Case

  test "simulate a not found error" do
    {:error, response} = Api.Errors.NotFound.not_found(%{"reason" => "notFound"})
    assert response == "The clan or player tag is invalid"
  end
end
