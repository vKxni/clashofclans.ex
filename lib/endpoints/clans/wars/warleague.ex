defmodule Endpoints.Clans.Wars.Warleague do
  alias Endpoints.Clans.Raw
  alias Api.Errors.NotFound

  @moduledoc """
  Returns the clans warleague league, f.e. "Master League II"
  """

  def get_clan_war_league_name(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Map.take(clan, ["warLeague"])
        |> Map.values()
        |> hd()
        |> Map.take(["name"])
        |> Map.values()
        |> hd()
      end
    end
  end
end
