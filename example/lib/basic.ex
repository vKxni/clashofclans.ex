defmodule Example.Basic do
  alias Clashofclans.Base.Players
  alias Clashofclans.Base.Clans

  # returns a players inGame-name
  def playername(playertag) do
    Players.playername(playertag)
  end

  def league(playertag) do
    Players.league(playertag)
  end

  # returns the clanname of the given clantag
  def clanname(clantag) do
    Clans.clanname(clantag)
  end
end
