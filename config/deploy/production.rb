server "prod-labdus-decidim", user: "ruby-data", roles: %w(app db web worker)
set branch: "master"
set :rails_env, "production"
