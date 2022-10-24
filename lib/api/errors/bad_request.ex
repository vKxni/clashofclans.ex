defmodule Api.Errors.BadRequest do
  def bad_request(data) do
    if data["reason"] == "badRequest" do
      {:error, "The request was invalid"}
    else
      {:ok, data}
    end
  end
end
