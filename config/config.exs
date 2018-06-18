# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kittymapper,
  ecto_repos: [Kittymapper.Repo]

# Configures the endpoint
config :kittymapper, KittymapperWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fGgNFRaGO1o4+8v1QONQy1yCee+ZaD032eyd7EPu2l2OKNMPLVfaYxQMg1kLydna",
  render_errors: [view: KittymapperWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Kittymapper.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
