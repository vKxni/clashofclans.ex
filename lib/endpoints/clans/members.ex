defmodule Endpoints.Clans.Members do
  alias Endpoints.Clans.Raw
  alias Api.Errors.NotFound

  def get_clan_member_list(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Map.take(clan, ["memberList"])
        |> Map.values()
        |> hd()
      end
    end
  end

  def get_clan_member_number(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Map.take(clan, ["memberList"])
        |> Map.values()
        |> hd()
        |> length()
      end
    end
  end
end
