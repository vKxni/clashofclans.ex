defmodule Endpoints.Clans.Wars.Warleague do
  alias Endpoints.Clans.Raw

  def get_clan_war_league_name(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["warLeague"])
      |> Map.values()
      |> hd()
      |> Map.take(["name"])
      |> Map.values()
      |> hd()
    end
  end
end
