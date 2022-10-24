defmodule Api.Errors.NotFound do
  def not_found(data) do
    if data["reason"] == "notFound" do
      {:error, "The clan or player tag is invalid"}
    else
      {:ok, data}
    end
  end
end
