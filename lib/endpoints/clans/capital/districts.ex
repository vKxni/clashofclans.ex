defmodule Endpoints.Clans.Capital.Districts do
  alias Endpoints.Clans.Raw
  alias Api.Errors.NotFound

  def get_clan_capital_districts(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Kernel.get_in(clan, ["clanCapital", "districts"])
        |> Enum.map(fn district ->
          Map.take(district, ["districtHallLevel", "districtKey"])
        end)
      end
    end
  end
end
