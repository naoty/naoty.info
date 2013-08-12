require "./lib/custom_helpers"

activate :livereload

helpers CustomHelpers

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :markdown_engine, :redcarpet
set :markdown, {
  autolink: true,
  tables: true,
  fenced_code_blocks: true,
  disable_indented_code_blocks: true,
  underline: true,
  footnotes: true
}

configure :build do
end
