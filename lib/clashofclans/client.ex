defmodule Clashofclans.Client do
  alias Clashofclans.Api
  alias Api.Errors.InvalidIp

  @doc """
  A wrapper for the HTTPoison.get function to a specific URL
  """
  @type urltype :: String.t()
  @spec call_api(urltype) :: {:ok, map()} | {:error, String.t()}
  def call_api(url) do
    with {:ok, %{body: body}} <- Api.get(url) do
      if body["reason"] == "accessDenied.invalidIp" do
        {:error, "The IP address is not whitelisted."}
      else
        {:ok, Jason.decode(body)}
      end
    end
  end

  @doc """
  Strict URL for (raw) player data, will be displayed as a list
  """
  @type playertag :: String.t()
  @spec get_player_data(playertag) :: {:ok, map} | {:error, String.t()}
  def get_player_data(playertag) do
    url = "https://api.clashofclans.com/v1/players/#{URI.encode_www_form(playertag)}/"

    with {:ok, %{body: body}} <- Api.get(url) do
      if body["reason"] == "accessDenied.invalidIp" do
        {:error, "The IP address is not whitelisted."}
      else
        {:ok, Jason.decode(body)}
      end
    end
  end

  @doc """
  Strict URL for (raw) clan data, will be displayed as a list
  """
  @type clantag :: String.t()
  @spec get_clan_data(clantag) :: {:ok, map} | {:error, String.t()}
  def get_clan_data(clantag) do
    url = "https://api.clashofclans.com/v1/clans/#{URI.encode_www_form(clantag)}/"

    with {:ok, %{body: body}} <- Api.get(url) do
      if body["reason"] == "accessDenied.invalidIp" do
        {:error, "The IP address is not whitelisted."}
      else
        {:ok, Jason.decode(body)}
      end
    end
  end
end
