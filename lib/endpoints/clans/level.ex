defmodule Endpoints.Clans.Level do
  alias Endpoints.Clans.Raw

  def get_clan_level(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["clanLevel"])
      |> Map.values()
      |> hd()
    end
  end
end
