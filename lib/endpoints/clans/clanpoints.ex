defmodule Endpoints.Clans.Clanpoints do
  alias Endpoints.Clans.Raw

  def get_clan_clanpoints(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["clanPoints"])
      |> Map.values()
      |> hd()
    end
  end
end
