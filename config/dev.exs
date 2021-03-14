use Mix.Config

config :transaction_api, TransactionAPIWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []

config :eventstore,
       column_data_type: "jsonb"

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :phoenix, :plug_init_mode, :runtime

config :transaction_api, TransactionAPI.EventStore,
       serializer: EventStore.JsonbSerializer,
       types: EventStore.PostgresTypes,
       username: "postgres",
       password: "docker",
       database: "transaction_api_eventstore_dev",
       hostname: "localhost",
       pool_size: 10,
       pool_overflow: 5

config :transaction_api, TransactionAPI.Repo,
       username: "postgres",
       password: "docker",
       database: "transaction_api_dev",
       hostname: "localhost",
       show_sensitive_data_on_connection_error: true,
       pool_size: 10
