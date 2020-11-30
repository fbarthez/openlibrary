defmodule Openlibrary.Mixfile do
  use Mix.Project

  def project do
    [app: :openlibrary,
     version: "0.1.2",
     elixir: "~> 1.11",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: "Elixir client for Open Library REST API",
     package: package(),
    ]
  end

  def application do
    [applications: [
      :httpoison,
      :logger,
      :poison,
    ],
     mod: {Openlibrary, []}]
  end

  defp deps do
    [
      {:httpoison, "~> 1.7.0"},
      {:isbnex, ">= 0.2.0"},
      {:poison, "~> 4.0.1"},

      {:ex_doc, ">= 0.23.0", only: :dev},
    ]
  end

  def package do
    [ name: :openlibrary,
      files: ["lib", "mix.exs"],
      maintainers: ["Nithin Bekal"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/nithinbekal/openlibrary"},
    ]
  end
end
