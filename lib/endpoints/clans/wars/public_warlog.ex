defmodule Endpoints.Clans.Wars.PublicWarlog do
  alias Endpoints.Clans.Raw
  alias Api.Errors.NotFound

  def is_clan_log_public(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Map.take(clan, ["isWarLogPublic"])
        |> Map.values()
        |> hd()
      end
    end
  end
end
