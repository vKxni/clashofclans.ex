defmodule Example do
  alias Clashofclans.Base.Players

  def playername(playertag) do
    Players.playername(playertag)
  end
end
