# Airbrake is an online tool that provides robust exception tracking in your Rails
# applications. In doing so, it allows you to easily review errors, tie an error
# to an individual piece of code, and trace the cause back to recent
# changes. Airbrake enables for easy categorization, searching, and prioritization
# of exceptions so that when errors occur, your team can quickly determine the
# root cause.
#
# Configuration details:
# https://github.com/airbrake/airbrake-ruby#configuration
Airbrake.configure do |c|
  c.project_id = 1
  c.project_key = ENV['AIRBRAKE_KEY'] || "empty"
  c.host = ENV['AIRBRAKE_HOST']
  c.root_directory = Rails.root
  c.logger = Rails.logger
  c.environment = Rails.env
  c.ignore_environments = %w(test)
  c.blacklist_keys = [/password/i, /authorization/i]
end
