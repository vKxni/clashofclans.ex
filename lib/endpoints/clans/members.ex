defmodule Endpoints.Clans.Members do
  alias Endpoints.Clans.Raw

  def get_clan_member_list(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["memberList"])
      |> Map.values()
      |> hd()
    end
  end

  def get_clan_member_number(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["memberList"])
      |> Map.values()
      |> hd()
      |> length()
    end
  end
end
