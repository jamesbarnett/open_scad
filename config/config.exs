import Config

config :open_scad, :watcher_path, "./models"

for config <- "../apps/*/config/config.exs" |> Path.expand(__DIR__)
|> Path.wildcard() do
  import_config config
end
