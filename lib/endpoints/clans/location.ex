defmodule Endpoints.Clans.Location do
  alias Endpoints.Clans.Raw
  alias Api.Errors.NotFound

  def get_clan_location_list(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Map.take(clan, ["location"])
        |> Map.values()
        |> hd()
      end
    end
  end

  def get_clan_location_name(clantag) do
    with {:ok, location} <- Raw.get_raw_clan_information(clantag) do
      if location["reason"] == "notFound" do
        NotFound.not_found(location)
      else
        Kernel.get_in(location, ["location", "name"])
      end
    end
  end

  def get_clan_location_isCountry(clantag) do
    with {:ok, location} <- Raw.get_raw_clan_information(clantag) do
      if location["reason"] == "notFound" do
        NotFound.not_found(location)
      else
        Kernel.get_in(location, ["location", "isCountry"])
      end
    end
  end

  def get_clan_location_countryCode(clantag) do
    with {:ok, location} <- Raw.get_raw_clan_information(clantag) do
      if location["reason"] == "notFound" do
        NotFound.not_found(location)
      else
        Kernel.get_in(location, ["location", "countryCode"])
      end
    end
  end

  def get_clan_location_id(clantag) do
    with {:ok, location} <- Raw.get_raw_clan_information(clantag) do
      if location["reason"] == "notFound" do
        NotFound.not_found(location)
      else
        Kernel.get_in(location, ["location", "id"])
      end
    end
  end
end
