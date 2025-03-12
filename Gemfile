source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.2"
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"
# Use sqlite3 as the database for Active Record
# gem "sqlite3", ">= 1.4"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false

  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "pry"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "simplecov"
  gem "shoulda-matchers"
  gem "rspec-rails"
  gem "capybara"
  gem "selenium-webdriver"
end

gem "web-console", group: :development # [https://github.com/rails/web-console]
gem "graphql", "~> 2.4" # [https://github.com/rmosolgo/graphql-ruby]
gem "graphiql-rails", group: :development# [https://github.com/rmosolgo/graphiql-rails]
gem "rack-cors"# [https://github.com/cyu/rack-cors]
gem "jsonapi-serializer"# [https://github.com/jsonapi-serializer/jsonapi-serializer?tab=readme-ov-file]
# gem "rolify"# [https://github.com/RolifyCommunity/rolify]
# gem "pundit", "~> 2.4"# [https://github.com/varvet/pundit/blob/main/README.md]
gem "jwt"# [https://github.com/jwt/ruby-jwt/blob/main/README.md]
gem "pg"# [https://github.com/ged/ruby-pg]

gem "graphql-batch" # [https://github.com/Shopify/graphql-batch] #Usage: Update your Types::QueryType to use batching when fetching data
