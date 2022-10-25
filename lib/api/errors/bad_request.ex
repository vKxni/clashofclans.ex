defmodule Api.Errors.BadRequest do
  @moduledoc """
  Check if the API request failed due to a bad request (like a wrong URL/path).
  """
  def bad_request(data) do
    if data["reason"] == "badRequest" do
      {:error, "The request was invalid"}
    else
      {:ok, data}
    end
  end
end
