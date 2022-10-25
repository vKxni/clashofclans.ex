defmodule Api.Errors.NotFound do
  @moduledoc """
  Returns an error if the given player/clantag doesn't exist.
  """
  def not_found(data) do
    if data["reason"] == "notFound" do
      {:error, "The clan or player tag is invalid"}
    else
      {:ok, data}
    end
  end
end
