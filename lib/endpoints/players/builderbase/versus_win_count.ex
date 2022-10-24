defmodule Endpoints.Players.Builderbase.VersusWinCount do
  alias Endpoints.Players.Raw
  alias Api.Errors.NotFound

  def get_versus_win_count(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      if account["reason"] == "notFound" do
        NotFound.not_found(account)
      else
        Kernel.get_in(account, ["versusBattleWinCount"])
      end
    end
  end
end
