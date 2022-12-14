defmodule Endpoints.Clans.Capital.Districts do
  alias Endpoints.Clans.Raw

  @moduledoc """
  This module is used to get the clan's capital districts.
  """

  def get_clan_capital_districts(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Kernel.get_in(clan, ["clanCapital", "districts"])
      |> Enum.map(fn district ->
        Map.take(district, ["districtHallLevel", "districtKey"])
      end)
    end
  end
end
