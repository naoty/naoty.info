require "yaml"
require "./lib/custom_helpers"

activate :blog do |blog|
  blog.permalink = "entries/:year/:month/:day.html"
end

secret = YAML.load_file("./secret.yml")
activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.host = secret["deploy"]["host"]
  deploy.path = secret["deploy"]["path"]
  deploy.user = secret["deploy"]["user"]
  deploy.port = secret["deploy"]["port"]

  deploy.build_before = true
end

activate :livereload

helpers CustomHelpers

set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"
set :markdown_engine, :redcarpet
set :markdown, {
  autolink: true,
  tables: true,
  fenced_code_blocks: true,
  disable_indented_code_blocks: true,
  underline: true,
  footnotes: true
}

Time.zone = "Tokyo"

configure :build do
end
