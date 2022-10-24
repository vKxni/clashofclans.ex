defmodule Endpoints.Clans.Wars.WarleagueInfo do
  alias Clashofclans.Client

  defp get_raw_clanwarleague_information(clantag) do
    Client.call_api(
      "https://api.clashofclans.com/v1/clans/#{format_tag(clantag)}/currentwar/leaguegroup"
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

  defp format_tag(clantag) do
    String.replace(clantag, "#", "%23")
  end
end
