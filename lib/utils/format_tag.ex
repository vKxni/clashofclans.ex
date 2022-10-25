defmodule Utils.FormatTag do
  def format_tag(tag) do
    String.replace(tag, "#", "%23")
  end
end
