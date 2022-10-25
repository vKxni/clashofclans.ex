defmodule Api.Errors.InvalidIp do
  @moduledoc """
  Returns an error if the given APi token's IP isn't whitelisted
  """
  def invalid_ip(data) do
    if data["reason"] == "accessDenied.InvalidIp" do
      {:error, "The IP address is not whitelisted."}
    else
      {:ok, data}
    end
  end
end
