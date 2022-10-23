defmodule Endpoints.Leagues.Raw do
  alias Clashofclans.Client

  def get_raw_leagues do
    {:ok, data} = Client.call_api("https://api.clashofclans.com/v1/leagues")
    data
  end
end
