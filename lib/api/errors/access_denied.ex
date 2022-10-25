defmodule Api.Errors.AccessDenied do
  @moduledoc """
  Check if the APi request failed due to a denied access.
  """
  def access_denied(data) do
    if data["reason"] == "accessDenied" do
      {:error, "The clans public information is currently not available"}
    else
      {:ok, data}
    end
  end
end
