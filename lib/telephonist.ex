defmodule Telephonist do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Telephonist.WebHookWorker, [])
    ]

    opts = [strategy: :one_for_one, name: Telephonist.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
