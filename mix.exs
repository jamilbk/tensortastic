defmodule Tensortastic.Mixfile do
  use Mix.Project

  def project do
    [app: :tensortastic,
     version: "0.0.1-prealpha",
     compilers: [:elixir_make] ++ Mix.compilers,
     elixir: "~> 1.3",
     description: "Experimental Tensorflow bindings for Elixir",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  def package do
    [ name: :tensortastic,
      files: ["lib", "mix.exs"],
      maintainers: ["Jamil Bou Kheir"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/jamilbk/tensortastic"},
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:elixir_make, "~> 0.4"},
      {:earmark, ">= 0.0.0", only: :dev},
      {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end
end
