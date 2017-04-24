use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :user_app, UserApp.Endpoint,
  http: [port: 4001],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []

config :guardian, Guardian,
  secret_key: "DuWKWhfeBuho78bfbBTz/Hl4/LfcR+2bzoiy9A1SC/JjBNPlMXbn9QCqK1JhaTRz"

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :user_app, UserApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "developer",
  password: "developer",
  database: "user_app_dev",
  hostname: "localhost",
  pool_size: 10

# RabbitMQ server url
config :user_app, :rabbitmq_url, "amqp://localhost"
