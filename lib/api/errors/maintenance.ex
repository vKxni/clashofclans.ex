defmodule Api.Errors.Maintenance do
  def on_maintenance(data) do
    if data["reason"] == "inMaintenance" do
      {:error, "The API is currently on undergoing maintenance"}
    else
      {:ok, data}
    end
  end
end
