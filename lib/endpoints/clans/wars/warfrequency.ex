defmodule Endpoints.Clans.Wars.Warfrequency do
  alias Endpoints.Clans.Raw

  def get_clan_warfrequency(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["warFrequency"])
      |> Map.values()
      |> hd()
    end
  end
end
