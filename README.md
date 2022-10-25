[![Discord](https://img.shields.io/discord/823720615965622323.svg?style=for-the-badge)](https://discord.gg/UDNcTrBagN)
[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/vkxni)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge)](https://github.com/alelievr/Mixture/blob/master/LICENSE)

# <p align="center">ClashOfClans.ex

<p align="center">A <strong>functional</strong> Clash of Clans APi Wrapper written in pure Elixir.</p>

<p align="center">
<img src="coc.ex_logo.png"  alt="clashofclans.ex" width="300" height="300"/></a>
<p>

```elixir
defmodule Example do
  alias Clashofclans.Base.Players

  def playername(playername) do
    Players.playername(playername)
  end
end

# returns the name of the player
Example.playername("your-tag-here") 
```

---

## Getting started
*BSF: This is a WIP and currently in v1 (development) mode. This means that the API is not stable and may change at any time. Please report bugs through issue requests, thanks.*
> #### Installing
    
```elixir
def deps do
    [{:clashofclans, "~> 0.1.0"}]
end
```

```
$ mix deps.get
```

--- 

> #### Configuration
Since we (currently) only support authentication through APi tokens, you will need to get one from the [Clash of Clans API](https://developer.clashofclans.com/#/account) website. Once you have your token, you can add it to your `config/config.exs` file like so:

`config/config.exs`
```elixir
# Without sourcing
import Config

config :clashofclans, api_key: System.get_env("API_KEY")
``` 

`config/config.exs`
```elixir
# With sourcing
import Config

config :clashofclans, api_key: "super-secret-api-key-here"
``` 
**With this method you have to run `source .env` before running/building your application.**

*Note:* If you want to use a custom ENV environment on runtime, then use a custom library like [https://hex.pm/packages/dotenv_parser](https://hex.pm/packages/dotenv_parser).

`.env` example
```
export API_KEY="super-secret-api-key-here"
```
You can directly pass in the APi key if you use a custom/runtime environment, but
make  sure the `.env` is in your root directory.

> ### Queries, functions, modules

#### 1.) Modules
- [x] Clan
- [x] Player
- [x] Leagues 
- [x] Gold pass

#### 2.) Functions

- Base 

coming soon

- Extended

coming soon

---

© vKxni 2022, [MIT Licence](/LICENSE), by [@vKxni](https://github.com/vKxni).