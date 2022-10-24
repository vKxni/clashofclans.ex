defmodule Endpoints.Players.VerifyToken do
  alias Clashofclans.Client

  def check_verify_token(playertag, token) do
    {:ok, account} = Client.call_api("https://api.clashofclans.com/v1/players/#{URI.encode_www_form(playertag)}/verifytoken?token=#{URI.encode_www_form(token)}")
    if account["reason"] == "notFound" do
      {:error, "The player tag is not found."}
    else
      {:ok, account}
    end
  end
end

# #8VU0LPVL0
# 2h2hrh8d
