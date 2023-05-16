defmodule Stella.MixProject do
  use Mix.Project

  def project do
    [
      app: :stella,
      version: "0.7.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      aliases: aliases(),
      docs: [
        main: "Stella",
        extras: ["README.md", "CHANGELOG.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp aliases do
    [docs: ["docs", &copy_images/1]]
  end

  defp copy_images(_) do
    File.cp_r("assets", "doc/assets", fn source, destination ->
      IO.gets("Overwriting #{destination} by #{source}. Type y to confirm. ") == "y\n"
    end)

    File.cp_r("doc", "docs", fn _source, _destination ->
      true
    end)
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:mix_test_watch, "~> 1.1", only: :dev, runtime: false},
      {:ex_doc, "~> 0.29.4", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Rapid Elixir library providing implementations of the most famous algorithms, data structures and math functions, out of the box"
  end

  defp package() do
    [
      name: "stella",
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/Poyters/stella"}
    ]
  end
end
