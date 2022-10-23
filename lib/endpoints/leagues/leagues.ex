defmodule Endpoints.Leagues.Leagues do
  alias Endpoints.Leagues.Raw

  @moduledoc """
  Returns a list of a specific list with all kind of information
  """

  def get_legend_league do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Legend League"))
  end

  def get_titan_league_three do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Titan League III"))
  end

  def get_titan_league_two do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Titan League II"))
  end

  def get_titan_league_one do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Titan League I"))
  end

  def get_champion_league_three do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Champion League III"))
  end

  def get_champion_league_two do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Champion League II"))
  end

  def get_champion_league_one do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Champion League I"))
  end

  def get_master_league_three do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Master League III"))
  end

  def get_master_league_two do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Master League II"))
  end

  def get_master_league_one do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Master League I"))
  end

  def get_crystal_league_three do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Crystal League III"))
  end

  def get_crystal_league_two do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Crystal League II"))
  end

  def get_crystal_league_one do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Crystal League I"))
  end

  def get_gold_league_three do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Gold League III"))
  end

  def get_gold_league_two do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Gold League II"))
  end

  def get_gold_league_one do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Gold League I"))
  end

  def get_silver_league_three do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Silver League III"))
  end

  def get_silver_league_two do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Silver League II"))
  end

  def get_silver_league_one do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Silver League I"))
  end

  def get_bronze_league_three do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Bronze League III"))
  end

  def get_bronze_league_two do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Bronze League II"))
  end

  def get_bronze_league_one do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Bronze League I"))
  end

  def get_unranked_league do
    data = Raw.get_raw_leagues()

    data["items"]
    |> Enum.find(&(&1["name"] == "Unranked"))
  end
end
