defmodule Utils.FormatTag do
  @moduledoc """
  Formats a given tag like #PPVYC88R to "%23PPVYC88R"
  """
  def format_tag(playertag) do
    String.replace(playertag, "#", "%23")
  end
end
