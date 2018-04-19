defmodule KashimashiWeb.PageController do
  use KashimashiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
