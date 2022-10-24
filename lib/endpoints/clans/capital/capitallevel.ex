defmodule Endpoints.Clans.Capital.Capitallevel do
  alias Endpoints.Clans.Raw
  alias Api.Errors.NotFound

  def get_clan_capital_level(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      if clan["reason"] == "notFound" do
        NotFound.not_found(clan)
      else
        Kernel.get_in(clan, ["clanCapital", "capitalHallLevel"])
      end
    end
  end
end
