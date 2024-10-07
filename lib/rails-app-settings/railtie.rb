# frozen_string_literal: true

module RailsAppSettings
  class Railtie < Rails::Railtie
    initializer "rails_app_settings.configure_rails_initialization" do |app|
      app.middleware.use RailsAppSettings::Middleware
    end
  end
end
