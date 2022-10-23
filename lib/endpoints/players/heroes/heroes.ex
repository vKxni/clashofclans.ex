defmodule Endpoints.Players.Heroes do
  alias Endpoints.Players.Raw

  def raw_heroes(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Map.take(account, ["heroes"])
      |> Map.values()
      |> hd()
    end
  end

  def find_by_name(playertag, heroname) do
    raw_heroes(playertag)
    |> Enum.find(fn hero -> hero["name"] == heroname end)
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
end
