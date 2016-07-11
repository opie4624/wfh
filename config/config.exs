# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :wfh,
  ecto_repos: [Wfh.Repo]

# Configures the endpoint
config :wfh, Wfh.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vEh776+RWKtt17+6tzkdy8AMjs5p6IIYTetEZ7qvQ1TJ+jvKLdBVraPwjWlq+CbQ",
  render_errors: [view: Wfh.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Wfh.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
