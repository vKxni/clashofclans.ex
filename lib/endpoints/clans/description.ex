defmodule Endpoints.Clans.Description do
  alias Endpoints.Clans.Raw

  def get_clan_description(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["description"])
      |> Map.values()
      |> hd()
    end
  end
end
