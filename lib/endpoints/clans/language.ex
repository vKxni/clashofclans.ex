defmodule Endpoints.Clans.Language do
  alias Endpoints.Clans.Raw
  alias Api.Errors.NotFound

  def get_clan_language(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Map.take(clan, ["chatLanguage"])
        |> Map.values()
        |> hd()
        |> Map.take(["name"])
        |> Map.values()
        |> hd()
      end
    end
  end
end
