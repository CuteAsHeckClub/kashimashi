defmodule KashimashiWeb.AuthErrorController do
  import Plug.Conn
  use KashimashiWeb, :controller

  def auth_error(conn, {_type, _reason}, _opts) do
    conn
    |> put_status(:unauthorized)
    |> render(KashimashiWeb.SessionView, "wrong_credentials.json")
  end
end
