defmodule Endpoints.Clans.Wars.Warwinstreak do
  alias Endpoints.Clans.Raw

  def get_clan_warwinstreak(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["warWinStreak"])
      |> Map.values()
      |> hd()
    end
  end
end
