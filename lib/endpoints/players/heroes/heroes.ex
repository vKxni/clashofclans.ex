defmodule Endpoints.Players.Heroes do
  alias Endpoints.Players.Raw
  alias Api.Errors.NotFound

  defp raw_heroes(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Map.take(account, ["heroes"])
        |> Map.values()
        |> hd()
      end
    end
  end

  def get_level_of_barbarian_king(playertag) do
    find_by_name(playertag, "Barbarian King")["level"]
  end

  def get_level_of_archer_queen(playertag) do
    find_by_name(playertag, "Archer Queen")["level"]
  end

  def get_level_of_grand_warden(playertag) do
    find_by_name(playertag, "Grand Warden")["level"]
  end

  def get_level_of_royal_champion(playertag) do
    find_by_name(playertag, "Royal Champion")["level"]
  end

  def get_level_of_battle_machine(playertag) do
    find_by_name(playertag, "Battle Machine")["level"]
  end

  defp find_by_name(playertag, heroname) do
    with {:ok, heroes} <- raw_heroes(playertag) do
      if heroes["reason"] == "notFound" do
        NotFound.not_found(heroes)
      else
        heroes
        |> Enum.find(fn hero -> hero["name"] == heroname end)
      end
    end
  end
end
