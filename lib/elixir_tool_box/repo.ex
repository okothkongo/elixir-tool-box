defmodule ElixirToolBox.Repo do
  use Ecto.Repo,
    otp_app: :elixir_tool_box,
    adapter: Ecto.Adapters.Postgres
end
