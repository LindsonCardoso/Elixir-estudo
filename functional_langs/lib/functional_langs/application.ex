defmodule FunctionalLangs.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: FunctionalLangs.Worker.start_link(arg)
      # {FunctionalLangs.Worker, arg}

      FunctionalLangs.HackerNewsClient.child_spec(),
      {MyXQL,
        username: "root",
        password: "root",
        hostname: "localhost",
        database: "zltecnologia",
        port: 3306,
        name: :mybd
      }
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: FunctionalLangs.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
