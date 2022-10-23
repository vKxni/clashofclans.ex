[![Discord](https://img.shields.io/discord/823720615965622323.svg?style=for-the-badge)](https://discord.gg/UDNcTrBagN)
[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/vkxni)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge)](https://github.com/alelievr/Mixture/blob/master/LICENSE)

# <p align="center">ClashOfClans.ex

<p align="center">An <strong>functional</strong> Clash of Clans APi Wrapper written in pure Elixir</p>

<p align="center">
<img src="coc.ex_logo.png"  alt="clashofclans.ex" width="300" height="300"/></a>
<p>



---

## Getting started

> #### Installing
    
```elixir
def deps do
    [{:clashofclans, "~> 0.1.0"}]
end
```

```
$ mix deps.get
```

> #### Configuration

- Get your API key from [Clash of Clans API](https://developer.clashofclans.com/#/account) and add it to your `config/config.exs` file

`config/config.exs`
```elixir
# Without source
import Config

config :clashofclans, api_key: System.get_env("API_KEY")
``` 

`config/config.exs`
```elixir
# With source
import Config

config :clashofclans, api_key: "super-secret-api-key-here"
``` 
**With this method you have to run `source .env` before running your application.**

*Note:* If you want to use a custom ENV environment on runtime, then use a library like [https://hex.pm/packages/dotenv_parser](https://hex.pm/packages/dotenv_parser).

`.env` for source
```
export API_KEY="super-secret-api-key-here"
```
Make sure this file is in your root directory.

> #### Queries, functions, modules

... coming soon, WIP.