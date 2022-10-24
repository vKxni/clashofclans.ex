defmodule Endpoints.Clans.Wars.CurrentWar do
  alias Clashofclans.Client
  alias Api.Errors.NotFound
  alias Api.Errors.AccessDenied

  defp get_raw_currentwar_information(clantag) do
    Client.call_api("https://api.clashofclans.com/v1/clans/#{format_tag(clantag)}/currentwar")
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

  defp format_tag(clantag) do
    String.replace(clantag, "#", "%23")
  end
end
