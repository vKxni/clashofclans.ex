defmodule Clashofclans.Api do
  use HTTPoison.Base

  def process_request_headers(headers),
    do: headers ++ [Authorization: "Bearer #{api_key()}", Accept: "application/json"]

  defp api_key() do
    with {:ok, token} <- Application.fetch_env(:clashofclans, :api_key) do
      token
    else
      _ -> raise "No API key found in config.exs or .env"
    end
  end
end
