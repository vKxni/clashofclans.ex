defmodule Api.BadRequest do
  use ExUnit.Case

  test "simulate an bad request error" do
    {:error, response} = Api.Errors.BadRequest.bad_request(%{"reason" => "badRequest"})
    assert response == "The request was invalid"
  end
end
