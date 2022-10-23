defmodule Endpoints.Players.Builderbase.VersusWinCount do
  alias Endpoints.Players.Raw

  def get_versus_win_count(playertag) do
    with {:ok, account} <- Raw.get_raw_player_information(playertag) do
      Kernel.get_in(account, ["versusBattleWinCount"])
    end
  end
end
