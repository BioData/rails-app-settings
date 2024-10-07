# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)
require "rails-app-settings/version"

Gem::Specification.new do |s|
  s.name = "rails-app-settings"
  s.version = RailsAppSettings.version
  s.authors = ["Roy Gal"]
  s.email = "roygal@gmail.com"
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.homepage = "https://github.com/BioData/rails-app-settings"
  s.require_paths = ["lib"]
  s.license = "MIT"

  s.required_ruby_version = ">= 2.5"
  s.summary = "The best global settings solution for Rails applications."
  s.description = "
  The best global settings solution for Rails applications.

  This gem manages a database table of key value pairs.
  Think of it like a global Hash stored in your database, that uses simple ActiveRecord like methods for manipulation.
  Every field can be configured to have a specific type.
  It also has a configurable caching mechanism that uses your Rails app cache store by default.
  "

  s.add_dependency "railties", ">= 5.0.0"
  s.add_dependency "activerecord", ">= 5.0.0"

  s.add_development_dependency "pg"
  s.add_development_dependency "rake"
  s.add_development_dependency "minitest"
  s.add_development_dependency "rubocop"
  s.add_development_dependency "sqlite3"
end