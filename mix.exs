defmodule Stella.MixProject do
  use Mix.Project

  def project do
    [
      app: :stella,
      version: "0.2.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      docs: [
        main: "Stella",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:mix_test_watch, "~> 1.0", only: :dev, runtime: false},
      {:ex_doc, "~> 0.22", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Elixir library providing implementations of the most famous algorithms, data structures and math functions, out of the box"
  end

  defp package() do
    [
      name: "stella",
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/RafalKostecki/stella"}
    ]
  end
end
