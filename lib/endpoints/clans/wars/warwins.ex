defmodule Endpoints.Clans.Wars.Warwins do
  alias Endpoints.Clans.Raw

  def get_clan_warwins(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["warWins"])
      |> Map.values()
      |> hd()
    end
  end
end
