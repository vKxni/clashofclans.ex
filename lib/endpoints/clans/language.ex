defmodule Endpoints.Clans.Language do
  alias Endpoints.Clans.Raw

  def get_clan_language(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["chatLanguage"])
      |> Map.values()
      |> hd()
      |> Map.take(["name"])
      |> Map.values()
      |> hd()
    end
  end
end
