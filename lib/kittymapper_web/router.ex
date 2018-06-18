defmodule KittymapperWeb.Router do
  use KittymapperWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", KittymapperWeb do
    pipe_through :api
  end
end
