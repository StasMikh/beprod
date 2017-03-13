# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :beprod,
  ecto_repos: [Beprod.Repo]

# Configures the endpoint
config :beprod, Beprod.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "B7eLT/yAddM3gQFlr5eoxeXX4Tp+dgVRpbnnL26mSVeQHvew1eliZk8ZZ+GvSQNV",
  render_errors: [view: Beprod.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Beprod.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
