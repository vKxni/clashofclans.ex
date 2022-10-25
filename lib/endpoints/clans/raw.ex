defmodule Endpoints.Clans.Raw do
  alias Clashofclans.Client

  @moduledoc """
  Returns the whole data structure of a clan without filters. DO NOT USE THIS MODULE DIRECTLY.
  """

  def get_raw_clan_information(clantag) do
    Client.call_api("https://api.clashofclans.com/v1/clans/#{URI.encode_www_form(clantag)}/")
  end
end
