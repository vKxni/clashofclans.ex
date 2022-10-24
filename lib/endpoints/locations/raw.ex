defmodule Endpoints.Locations.Raw do
  alias Clashofclans.Client
  alias Api.Errors.BadRequest

  @moduledoc """
  Returns the raw location information in a nested-list format

  Test Country IO :: 32000039
  """

  @spec get_raw_locations() :: {:ok, map()} | {:error, String.t()}
  def get_raw_locations do
    Client.call_api("https://api.clashofclans.com/v1/locations/")
  end

  @spec get_raw_location_information(String.t()) :: {:ok, map()} | {:error, String.t()}
  def get_raw_location_information(location_id) do
    {:ok, data} = Client.call_api("https://api.clashofclans.com/v1/locations/#{location_id}")

    if data["reason"] == "badRequest" do
      BadRequest.bad_request(data)
    else
      {:ok, data}
    end
  end

  @spec get_raw_location_ranking_clans(String.t()) :: {:ok, map()} | {:error, String.t()}
  def get_raw_location_ranking_clans(location_id) do
    {:ok, data} =
      Client.call_api("https://api.clashofclans.com/v1/locations/#{location_id}/rankings/clans")

    if data["reason"] == "badRequest" do
      BadRequest.bad_request(data)
    else
      {:ok, data}
    end
  end

  @spec get_raw_location_ranking_players(String.t()) :: {:ok, map()} | {:error, String.t()}
  def get_raw_location_ranking_players(location_id) do
    {:ok, data} =
      Client.call_api("https://api.clashofclans.com/v1/locations/#{location_id}/rankings/players")

    if data["reason"] == "badRequest" do
      BadRequest.bad_request(data)
    else
      {:ok, data}
    end
  end

  @spec get_raw_location_ranking_clan_versus_clans(String.t()) :: {:ok, map()} | {:error, String.t()}
  def get_raw_location_ranking_clan_versus_clans(location_id) do
    {:ok, data} =
      Client.call_api(
        "https://api.clashofclans.com/v1/locations/#{location_id}/rankings/clans-versus"
      )

    if data["reason"] == "badRequest" do
      BadRequest.bad_request(data)
    else
      {:ok, data}
    end
  end

  @spec get_raw_location_ranking_player_versus(String.t()) :: {:ok, map()} | {:error, String.t()}
  def get_raw_location_ranking_player_versus(location_id) do
    {:ok, data} =
      Client.call_api(
        "https://api.clashofclans.com/v1/locations/#{location_id}/rankings/players-versus"
      )

    if data["reason"] == "badRequest" do
      BadRequest.bad_request(data)
    else
      {:ok, data}
    end
  end
end
