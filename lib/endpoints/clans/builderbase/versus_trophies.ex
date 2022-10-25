defmodule Endpoints.Clans.Builderbase.VersusTrophies do
  alias Endpoints.Clans.Raw

  @moduledoc """
  This module is used to get the clan's versus trophies.
  """

  def get_clan_versus_trophies(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Map.take(clan, ["clanVersusPoints"])
      |> Map.values()
      |> hd()
    end
  end
end
