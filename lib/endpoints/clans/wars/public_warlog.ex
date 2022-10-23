defmodule Endpoints.Clans.Wars.PublicWarlog do
  alias Endpoints.Clans.Raw

  def is_clan_log_public(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["isWarLogPublic"])
      |> Map.values()
      |> hd()
    end
  end
end
