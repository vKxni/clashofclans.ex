defmodule Endpoints.Clans.Name do
  alias Endpoints.Clans.Raw

  def get_clan_name(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["name"])
      |> Map.values()
      |> hd()
    end
  end
end
