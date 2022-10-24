defmodule Api.Errors.AccessDenied do
  def access_denied(data) do
    if data["reason"] == "accessDenied" do
      {:error, "The clans current war information is not public"}
    else
      {:ok, data}
    end
  end
end
