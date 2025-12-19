source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.1.1"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# HTTParty for making HTTP requests [https://github.com/jnunemaker/httparty]
gem "httparty", "~> 0.23.2"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder", "~> 2.14", ">= 2.14.1"

# Swagger-based API documentation [https://github.com/rswag/rswag]
gem "rswag", "~> 2.10", ">= 2.10.1"

# Pagination with Pagy [https://github.com/ddnexus/pagy]
gem "pagy", "~> 43.2", ">= 43.2.2"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
gem "rack-cors", "~> 3.0"

# Authentication with Devise [https://github.com/heartcombo/devise]
gem "devise", "~> 4.9", ">= 4.9.4"

# JWT support for Devise [https://github.com/waiting-for-dev/devise-jwt]
gem "devise-jwt", "~> 0.12.1"

# Redis support for Action Cable and caching [https://github.com/redis/redis-rb]
gem "redis", "~> 5.4", ">= 5.4.1"

group :development do
  gem "dotenv-rails", "~> 3.2"
  gem "pry-rails", "~> 0.3.11"
end

group :development, :test do
  # Use RSpec for testing [https://rspec.info/]
  gem "rspec-rails", "~> 8.0", ">= 8.0.2"

  # Capybara for integration testing [https://teamcapybara.github.io/capybara/]
  gem "capybara", "~> 3.40"

  # Factory Bot for test data generation [https://github.com/thoughtbot/factory_bot]
  gem "factory_bot_rails", "~> 6.5", ">= 6.5.1"

  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end
