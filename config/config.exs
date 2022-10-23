import Config

config :logger, level: :info
# config :json, log_level: :debug
config :clashofclans,
  api_key: System.get_env("API_KEY")

# api_key: "..."
