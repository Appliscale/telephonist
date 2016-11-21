defmodule Telephonist.WebHookPlug do
  require Logger

  import Plug.Conn

  def init(options) do
    options
  end

  def call(conn, _opts) do
    route(conn.method, conn.path_info, conn)
  end

  def route(_method, _path, conn) do
    Logger.warn("Not handled route: #{Telephonist.Utils.get_route(conn)}")
    conn |> send_resp(404, "Not found.")
  end
end
