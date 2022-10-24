defmodule Api.MaintenanceTest do
  use ExUnit.Case

  test "simulate an api maintenance" do
    {:error, response} = Api.Errors.Maintenance.on_maintenance(%{"reason" => "inMaintenance"})
    assert response == "The API is currently on undergoing maintenance"
  end
end
