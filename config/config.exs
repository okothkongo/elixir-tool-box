# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_tool_box,
  ecto_repos: [ElixirToolBox.Repo]

# Configures the endpoint
config :elixir_tool_box, ElixirToolBoxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DBil42hkRUcMqI0fbkMPrtD/zYmuWaeVsAuxwVGwNY/Gv27cgXBf0Z5/3KDK8SjH",
  render_errors: [view: ElixirToolBoxWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ElixirToolBox.PubSub,
  live_view: [signing_salt: "v/pynFOD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
