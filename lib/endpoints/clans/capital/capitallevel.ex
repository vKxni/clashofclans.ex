defmodule Endpoints.Clans.Capital.Capitallevel do
  alias Endpoints.Clans.Raw

  @moduledoc """
  This module is used to get the clan's capital level.

  Deep access of raw items data.
  """

  def get_clan_capital_level(clantag) do
    with {:ok, clan} <- Raw.get_raw_clan_information(clantag) do
      Kernel.get_in(clan, ["clanCapital", "capitalHallLevel"])
    end
  end
end
