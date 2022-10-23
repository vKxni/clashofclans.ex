defmodule Endpoints.Clans.Raw do
  alias Clashofclans.Client

  def get_raw_clan_information(clantag) do
    Client.call_api("https://api.clashofclans.com/v1/clans/#{URI.encode_www_form(clantag)}/")
  end
end
