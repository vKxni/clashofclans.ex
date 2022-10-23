defmodule Endpoints.Clans.Builderbase.VersusTrophies do
  alias Endpoints.Clans.Raw

  def get_clan_versus_trophies(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["clanVersusPoints"])
      |> Map.values()
      |> hd()
    end
  end
end
