defmodule Endpoints.Goldpass do
  alias Clashofclans.Client
  alias Utils.FormatTime

  @moduledoc """
  Returns informations about the current gold pass season such as
  - startTime
  - endTime
  """

  def get_raw_goldpass do
    {:ok, data} = Client.call_api("https://api.clashofclans.com/v1/goldpass/seasons/current")
    data
  end

  def get_start_time do
    data = get_raw_goldpass()

    FormatTime.format_time(data["startTime"])
  end

  def get_end_time do
    data = get_raw_goldpass()

    FormatTime.format_time(data["endTime"])
  end
end
