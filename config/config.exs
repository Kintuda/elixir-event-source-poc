# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :transaction_api,
  namespace: TransactionAPI,
  ecto_repos: [TransactionAPI.Repo]

# Configures the endpoint
config :transaction_api, TransactionAPIWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qc3wvATgYSusVia00TErVIEBEib3bE9+k5PGVTsOF9MH+6YmKR3r7BLgnfaAeJZO",
  render_errors: [view: TransactionAPIWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: TransactionAPI.PubSub,
  live_view: [signing_salt: "pfMZhyDd"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
