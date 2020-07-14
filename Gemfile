# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

gem "decidim", git: "https://github.com/decidim/decidim", branch: "0.19-stable"
gem "decidim-consultations"
gem "decidim-initiatives"
gem 'decidim-accountability'

gem "airbrake", "~> 5.0"
gem "bootsnap", "~> 1.3"
gem "deface", "~> 1.4"
gem "faker", "~> 1.9"
gem "figaro", "~> 1.1"
gem "puma", "~> 3.0"
gem "redis-namespace"
gem "sidekiq", "~> 5.2"
gem "uglifier", "~> 4.1"

gem "wicked_pdf"
group :development, :test do
  gem "byebug", "~> 10.0", platform: :mri
  gem "rspec-rails", "~> 3.8"
  gem "rubocop", require: false

  gem "decidim-dev"
end

group :development do
  gem "capistrano", "~> 3.10"
  gem "capistrano-rails", "~> 1.4"
  gem "capistrano3-puma", "~> 3.1"
  gem "capistrano-rbenv", "~> 2.1"
  gem "capistrano-sidekiq", "~> 1.0"
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.5"
end
