defmodule Endpoints.Clans.Type do
  alias Endpoints.Clans.Raw

  def get_clan_type(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["type"])
      |> Map.values()
      |> hd()
    end
  end
end
