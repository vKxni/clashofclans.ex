defmodule Endpoints.Players.Raw do
  alias Clashofclans.Client

  @moduledoc """
  Returns all players informations without filters. DO NOT USE THIS MODULE DIRECTLY.
  """

  def get_raw_player_information(playertag) do
    Client.get_player_data(playertag)
  end

  def get_achievements_from_account(playertag) do
    with {:ok, account} <- get_raw_player_information(playertag) do
      Map.take(account, ["achievements"])
    end
  end

  def get_troops_from_account(playertag) do
    with {:ok, account} <- get_raw_player_information(playertag) do
      Map.take(account, ["troops"])
    end
  end
end
