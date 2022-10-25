defmodule Endpoints.Clans.Members do
  alias Endpoints.Clans.Raw

  @moduledoc """
  This module is used to get the clan's members amount (integer) or the members list (map).
  """

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
