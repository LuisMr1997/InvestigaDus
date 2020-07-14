# config valid for current version and patch releases of Capistrano
lock "~> 3.12.0"

set :application, "labdus-decidim"
set :repo_url, "git@gitlab.com:labdus/decidim-dus.git"

set :deploy_to, "/home/ruby-data/app"

set :rbenv_type, :user
set :delayed_job_workers, 1
set :rbenv_ruby, "2.5.3"
set :sidekiq_config, "config/sidekiq.yml"
set :init_system, :systemd

append :linked_files, "config/application.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "public/uploads"


set :puma_bind, "tcp://0.0.0.0:3000"
set :puma_user, fetch(:user)
append :rbenv_map_bins, 'puma', 'pumactl'

SSHKit.config.command_map[:sidekiq] = "bundle exec sidekiq"
SSHKit.config.command_map[:sidekiqctl] = "bundle exec sidekiqctl"
