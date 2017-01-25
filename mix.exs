defmodule Detergentex.Mixfile do
  use Mix.Project

  def project do
    [app: :detergentex,
     version: "0.0.7",
     elixir: "~> 1.0",
     deps: deps,
     package: [
      contributors: ["Ricardo Echavarria", "Jonas Trevisan", "David Escobar"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/r-icarus/detergentex"}
     ],
     description: """
     Elixir binding to Detergent erlang library used to call WSDL SOAP Services
     """]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :inets, :ssl],
      mod: {Detergentex, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:detergent, git: "https://github.com/danxexe/detergent.git", ref: "e3df5faf1090f486cdbf634ba8aae1325cd499c4" },
      {:erlsom, github: "willemdj/erlsom"}
    ]
  end
end
