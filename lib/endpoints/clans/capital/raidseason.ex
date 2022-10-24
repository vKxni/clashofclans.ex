defmodule Endpoints.Clans.Capital.Raidseason do
  alias Clashofclans.Client
  alias Utils.FormatTime

  defp get_raw_raidseason(clantag) do
    {:ok, data} =
      Client.call_api(
        "https://api.clashofclans.com/v1/clans/#{format_tag(clantag)}/capitalraidseasons?limit=2"
      )

    data
  end

  # TODO: Proper error handling if the clan doesn't exist

  def get_raw_capital_defenselog(clantag) do
    data = get_raw_raidseason(clantag)

    data["items"]
    |> Enum.map(& &1["defenseLog"])
  end

  def get_capital_state(clantag) do
    data = get_raw_raidseason(clantag)

    data["items"]
    |> Enum.map(& &1["state"])
  end

  def get_capital_attacklog(clantag) do
    data = get_raw_raidseason(clantag)

    data["items"]
    |> Enum.map(& &1["attackLog"])
    |> hd()
  end

  def get_capital_offensive_rewards(clantag) do
    data = get_raw_raidseason(clantag)

    data["items"]
    |> Enum.map(& &1["defensiveReward"])
    |> hd()
  end

  def get_capital_raids_completed(clantag) do
    data = get_raw_raidseason(clantag)

    data["items"]
    |> Enum.map(& &1["raidsCompleted"])
    |> hd()
  end

  def get_capital_defensive_reward(clantag) do
    data = get_raw_raidseason(clantag)

    data["items"]
    |> Enum.map(& &1["defensiveReward"])
    |> hd()
  end

  def get_capital_endtime(clantag) do
    data = get_raw_raidseason(clantag)

    data["items"]
    |> Enum.map(& &1["endTime"])
    |> hd()
    |> FormatTime.format_time()
  end

  def get_capital_starttime(clantag) do
    data = get_raw_raidseason(clantag)

    data["items"]
    |> Enum.map(& &1["startTime"])
    |> hd()
    |> FormatTime.format_time()
  end

  def get_capital_enemy_district_destroyed(clantag) do
    data = get_raw_raidseason(clantag)

    data["items"]
    |> Enum.map(& &1["enemyDistrictDestroyed"])
    |> hd()
  end

  def get_capital_members(clantag) do
    data = get_raw_raidseason(clantag)

    data["items"]
    |> Enum.map(& &1["members"])
    |> hd()
  end

  def get_capital_total_loot(clantag) do
    data = get_raw_raidseason(clantag)

    data["items"]
    |> Enum.map(& &1["capitalTotalLoot"])
    |> hd()
  end

  def get_capital_total_attacks(clantag) do
    data = get_raw_raidseason(clantag)

    data["items"]
    |> Enum.map(& &1["totalAttacks"])
    |> hd()
  end

  defp format_tag(clantag) do
    String.replace(clantag, "#", "%23")
  end
end
