defmodule Endpoints.Locations.Raw do
  alias Clashofclans.Client

  def get_raw_locations do
    Client.call_api("https://api.clashofclans.com/v1/locations/")
  end

  # TODO: Error handling

  @spec get_raw_location_information(String.t()) :: map()
  def get_raw_location_information(location_id) do
    {:ok, data} = Client.call_api("https://api.clashofclans.com/v1/locations/#{location_id}")
    data
  end

  @spec get_raw_location_ranking_clans(String.t()) :: map
  def get_raw_location_ranking_clans(location_id) do
    {:ok, data} =
      Client.call_api("https://api.clashofclans.com/v1/locations/#{location_id}/rankings/clans")

    data
  end

  @spec get_raw_location_ranking_players(String.t()) :: map
  def get_raw_location_ranking_players(location_id) do
    {:ok, data} =
      Client.call_api("https://api.clashofclans.com/v1/locations/#{location_id}/rankings/players")

    data
  end

  @spec get_raw_location_ranking_clan_versus_clans(String.t()) :: map
  def get_raw_location_ranking_clan_versus_clans(location_id) do
    {:ok, data} =
      Client.call_api(
        "https://api.clashofclans.com/v1/locations/#{location_id}/rankings/clans-versus"
      )

    data
  end

  @spec get_raw_location_ranking_player_versus(String.t()) :: map
  def get_raw_location_ranking_player_versus(location_id) do
    {:ok, data} =
      Client.call_api(
        "https://api.clashofclans.com/v1/locations/#{location_id}/rankings/players-versus"
      )

    data
  end
end
