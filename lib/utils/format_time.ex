defmodule Utils.FormatTime do
  def format_time(time) do
    <<year::bytes-size(4), month::bytes-size(2), day::bytes-size(2), "T", _hours::bytes-size(2),
      _minutes::bytes-size(2), _seconds::bytes-size(2), ".", _microsecs::bytes-size(3),
      "Z">> = time

    {year, month, day}

    Date.new(String.to_integer(year), String.to_integer(month), String.to_integer(day))
  end
end
