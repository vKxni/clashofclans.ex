defmodule Endpoints.Locations.LocationRanking do
  alias Endpoints.Locations.Raw

  # 32000008 TODO: FIX

  def get_all_clans_with_the_specific_id(location_id) do
    data = Raw.get_raw_location_information(location_id)

    data["items"]
    |> Access.get("location")
    |> Access.get("clans")
  end
end
