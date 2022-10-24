defmodule Api.Errors.InvalidIp do
  def invalid_ip(data) do
    if data["reason"] == "accessDenied.InvalidIp" do
      {:error, "The IP address is not whitelisted."}
    else
      {:ok, data}
    end
  end
end
