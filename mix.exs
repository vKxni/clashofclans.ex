defmodule Clashofclans.MixProject do
  use Mix.Project

  @github_url "https://github.com/vKxni/clashofclans.ex"

  def project do
    [
      app: :clashofclans,
      version: "1.1.0",
      description: "An extended and functional wrapper for the Clash of Clans API",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: [
        maintainers: ["vKxni"],
        licenses: ["MIT"],
        links: %{
          GitHub: @github_url
        }
      ],
      source_url: @github_url,
      docs: [
        main: "readme",
        extras: [
          "README.md"
        ]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Clashofclans.Application, []}
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.8"},
      {:jason, "~> 1.4"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
