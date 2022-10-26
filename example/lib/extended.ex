defmodule Example.Extended do
  alias Clashofclans.Extended.Players
  alias Clashofclans.Extended.Clans

  def builderhall_level(playertag) do
    Players.builderhalllevel(playertag)
  end

  def king_level(playertag) do
    Players.barbariankinglevel(playertag)
  end

  def warleague(clantag) do
    Clans.warleague(clantag)
  end
end
