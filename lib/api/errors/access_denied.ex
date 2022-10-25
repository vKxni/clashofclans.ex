defmodule Api.Errors.AccessDenied do
  def access_denied(data) do
    if data["reason"] == "accessDenied" do
      {:error, "The clans public information is currently not available"}
    else
      {:ok, data}
    end
  end
end
