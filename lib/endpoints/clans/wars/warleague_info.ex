defmodule Endpoints.Clans.Wars.WarleagueInfo do
  alias Clashofclans.Client
  alias Utils.FormatTag

  defp get_raw_clanwarleague_information(clantag) do
    Client.call_api(
      "https://api.clashofclans.com/v1/clans/#{FormatTag.format_tag(clantag)}/currentwar/leaguegroup"
    )
  end

  def get_clanwarleague_information(clantag) do
    with {:ok, clan} <- get_raw_clanwarleague_information(clantag) do
      if clan["reason"] == "notFound" do
        {:error, "Clanwarleague not found"}
      else
        {:ok, clan}
      end
    end
  end
end
