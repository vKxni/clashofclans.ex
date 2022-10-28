defmodule Endpoints.Players.Verification do
  alias Clashofclans.Api
  alias Utils.FormatTag

  @moduledoc """
  This module is responsible for verifying a players account.

  Returns "invalid" if the API token is invalid/expired,
  Return "ok" if both is valid and the player is verified.

  DEV NOTE: This module has its own request endpoint since we need "content-type" instead of the "accept" header.
  """

  def process_request_headers(headers),
    do: headers ++ [Authorization: "Bearer #{api_key()}", "content-type": "application/json"]

  defp api_key() do
    with {:ok, token} <- Application.fetch_env(:clashofclans, :api_key) do
      token
    else
      _ -> raise "No API key found in config.exs or .env"
    end
  end

  @spec verify_player(String.t(), String.t()) :: String.t()
  def verify_player(playertag, token) do
    body = Jason.encode!(%{"token" => token})

    response =
      Api.post(
        "https://api.clashofclans.com/v1/players/#{FormatTag.format_tag(playertag)}/verifytoken",
        body
      )

    # decode the response and only return the status code of the body.
    with {:ok, %{body: body}} <- response do
      Jason.decode!(body) |> Map.get("status")
    end
  end
end
