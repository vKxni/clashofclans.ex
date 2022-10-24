defmodule Endpoints.Clans.Wars.Warwinstreak do
  alias Endpoints.Clans.Raw
  alias Api.Errors.NotFound

  def get_clan_warwinstreak(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Map.take(clan, ["warWinStreak"])
        |> Map.values()
        |> hd()
      end
    end
  end
end
