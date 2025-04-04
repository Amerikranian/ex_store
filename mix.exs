defmodule ExStore.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_store,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :runtime_tools],
      mod: {ExStore.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:libcluster, "~> 3.5"},
      {:gen_state_machine, "~> 3.0"},
      {:ex_hash_ring, "~> 6.0"},
      {:phoenix_pubsub, "~> 2.1"}
    ]
  end
end
