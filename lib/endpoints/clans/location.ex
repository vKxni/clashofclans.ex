defmodule Endpoints.Clans.Location do
  alias Endpoints.Clans.Raw

  def get_clan_location_list(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["location"])
      |> Map.values()
      |> hd()
    end
  end

  def get_clan_location_name(clantag) do
    with {:ok, location} <- Raw.get_raw_clan_information(clantag) do
      Kernel.get_in(location, ["location", "name"])
    end
  end

  def get_clan_location_isCountry(clantag) do
    with {:ok, location} <- Raw.get_raw_clan_information(clantag) do
      Kernel.get_in(location, ["location", "isCountry"])
    end
  end

  def get_clan_location_countryCode(clantag) do
    with {:ok, location} <- Raw.get_raw_clan_information(clantag) do
      Kernel.get_in(location, ["location", "countryCode"])
    end
  end

  def get_clan_location_id(clantag) do
    with {:ok, location} <- Raw.get_raw_clan_information(clantag) do
      Kernel.get_in(location, ["location", "id"])
    end
  end
end
