defmodule EdgeBuilder.Mixfile do
  use Mix.Project

  def project do
    [app: :edge_builder,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {EdgeBuilder, []},
     applications: [:phoenix, :cowboy, :logger]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 0.8.0"},
     {:cowboy, "~> 1.0"},
     {:postgrex, "~> 0.6"},
     {:ecto, "~> 0.5"},
     {:ex_spec, "~> 0.3.0", only: :test}]
  end
end
