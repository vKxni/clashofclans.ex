defmodule Endpoints.Leagues.Raw do
  alias Clashofclans.Client

  @moduledoc """
  Returns the whole data structure of a league without filters. DO NOT USE THIS MODULE DIRECTLY.
  """

  def get_raw_leagues do
    {:ok, data} = Client.call_api("https://api.clashofclans.com/v1/leagues")
    data
  end
end
