defmodule Endpoints.Clans.Raw do
  alias Clashofclans.Client
  alias Api.Errors.NotFound

  def get_raw_clan_information(clantag) do
    {:ok, data} =
      Client.call_api("https://api.clashofclans.com/v1/clans/#{URI.encode_www_form(clantag)}/")

    if data["reason"] == "notFound" do
      NotFound.not_found(data)
    else
      data
    end
  end
end
