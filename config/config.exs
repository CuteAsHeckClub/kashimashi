# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kashimashi,
  ecto_repos: [Kashimashi.Repo]

# Configures the endpoint
config :kashimashi, KashimashiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "H5AcfaG9fEz2gjjKEBJ3PNT7peIPEo270GOHwgataQEsfdx8Ujsi3aDlxel77eQH",
  render_errors: [view: KashimashiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kashimashi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configures Guardian
config :kashimashi, KashimashiWeb.Guardian,
  issuer: "kashimashi",
  ttl: {30, :days},
  verify_issuer: true
  # serializer: Kashimashi.GuardianSerializer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
