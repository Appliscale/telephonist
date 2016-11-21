defmodule Telephonist.WebHookWorker do
  require Logger

  def start_link do
    port = Application.get_env(:telephonist, :port) |> String.to_integer

    Logger.info("Starting Cowboy on port: #{port}")
    Plug.Adapters.Cowboy.http(Telephonist.WebHookPlug, [], port: port)
  end
end
