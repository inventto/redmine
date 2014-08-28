# Settings specified here will take precedence over those in config/application.rb
RedmineApp::Application.configure do
  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes     = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils        = true

  # Show full error reports and disable caching
  #config.action_controller.consider_all_requests_local = true
  config.action_controller.perform_caching             = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false


  config.secret_token = "c46b49a979484f2c36593e01eefea1b2f9cf182564f03329b6e06fd803ef652a65c0aca6f18c2aded7aecae25c39bd03602ce41f3bd17490"
  config.active_support.deprecation = [:stderr, :log]
end
