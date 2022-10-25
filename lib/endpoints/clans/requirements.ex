defmodule Endpoints.Clans.Requirements do
  alias Clashofclans.Client

  @moduledoc """
  This module is used to get the clan's requirements such as
  - th
  - lvl
  - trophies
  - versus trophies (BB)
  """

  def get_required_townhall_level(clantag) do
    with {:ok, clan} <- Client.get_clan_data(clantag) do
      Map.take(clan, ["requiredTownhallLevel"])
      |> Map.values()
      |> hd()
    end
  end

  def get_required_trophies(clantag) do
    with {:ok, clan} <- Client.get_clan_data(clantag) do
      Map.take(clan, ["requiredTrophies"])
      |> Map.values()
      |> hd()
    end
  end

  def get_required_versus_trophies(clantag) do
    with {:ok, clan} <- Client.get_clan_data(clantag) do
      Map.take(clan, ["requiredVersusTrophies"])
      |> Map.values()
      |> hd()
    end
  end
end
