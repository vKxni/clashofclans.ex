defmodule Endpoints.Leagues.LeagueList do
  alias Clashofclans.Client

  @doc """
  Returns a whole, direct formatted list of all leagues including their IDs
  """
  def get_raw_warleagues do
    Client.call_api("https://api.clashofclans.com/v1/warleagues/")
  end

  @doc """
  Return a list of all leagues
  """
  def format_warleagues do
    with {:ok, data} <- get_raw_warleagues() do
      data["items"]
      |> Enum.map(& &1["name"])
    end
  end
end
