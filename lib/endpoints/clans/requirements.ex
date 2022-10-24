defmodule Endpoints.Clans.Requirements do
  alias Clashofclans.Client
  alias Api.Errors.NotFound

  def get_required_townhall_level(clantag) do
    with {:ok, clan} <- Client.get_clan_data(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Map.take(clan, ["requiredTownhallLevel"])
        |> Map.values()
        |> hd()
      end
    end
  end

  def get_required_trophies(clantag) do
    with {:ok, clan} <- Client.get_clan_data(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Map.take(clan, ["requiredTrophies"])
        |> Map.values()
        |> hd()
      end
    end
  end

  def get_required_versus_trophies(clantag) do
    with {:ok, clan} <- Client.get_clan_data(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Map.take(clan, ["requiredVersusTrophies"])
        |> Map.values()
        |> hd()
      end
    end
  end
end
