defmodule Endpoints.Clans.Wars.CurrentWar do
  alias Clashofclans.Client
  alias Api.Errors.NotFound
  alias Api.Errors.AccessDenied
  alias Utils.FormatTag

  defp get_raw_currentwar_information(clantag) do
    Client.call_api("https://api.clashofclans.com/v1/clans/#{FormatTag.format_tag(clantag)}/currentwar")
  end

  def get_currentwar_information(clantag) do
    with {:ok, clan} <- get_raw_currentwar_information(clantag) do
      case clan do
        %{"reason" => "notFound"} -> NotFound.not_found(clan)
        %{"reason" => "accessDenied"} -> AccessDenied.access_denied(clan)
        _ -> {:ok, clan}
      end
    end
  end
end
