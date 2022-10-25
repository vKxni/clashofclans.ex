defmodule Api.Errors.Maintenance do
  @moduledoc """
  Check if the API request failed due to a maintenance break.
  """
  def on_maintenance(data) do
    if data["reason"] == "inMaintenance" do
      {:error, "The API is currently on undergoing maintenance"}
    else
      {:ok, data}
    end
  end
end
