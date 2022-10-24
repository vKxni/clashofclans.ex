defmodule Endpoints.Clans.Builderbase.VersusTrophies do
  alias Endpoints.Clans.Raw
  alias Api.Errors.NotFound

  def get_clan_versus_trophies(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Map.take(clan, ["clanVersusPoints"])
        |> Map.values()
        |> hd()
      end
    end
  end
end
