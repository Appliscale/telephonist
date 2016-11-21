defmodule Telephonist.Utils do
  def get_route(conn) do
    query_string = case conn.query_string do
        "" -> ""
        _  -> "?#{conn.query_string}"
    end

    "#{conn.method} #{conn.request_path}#{query_string}"
  end
end
