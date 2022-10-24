defmodule Endpoints.Players.Raw do
  alias Clashofclans.Client
  alias Api.Errors.NotFound

  @moduledoc """
  Returns the raw players informations in a list format
  """

  @spec get_raw_player_information(String.t()) :: {:ok, map()} | {:error, String.t()}
  def get_raw_player_information(playertag) do
    Client.get_player_data(playertag)
  end

  @spec get_raw_achievements_from_account(String.t()) :: {:ok, map()} | {:error, String.t()}
  def get_raw_achievements_from_account(playertag) do
    with {:ok, account} <- get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Map.take(account, ["achievements"])
      end
    end
  end

  @spec get_raw_troops_from_account(String.t()) :: {:ok, map()} | {:error, String.t()}
  def get_raw_troops_from_account(playertag) do
    with {:ok, account} <- get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Map.take(account, ["troops"])
      end
    end
  end
end
