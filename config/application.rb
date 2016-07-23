require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Qna
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    config.generators do |g|
      g.test_framework :rspec,
                        fixtures: true,
                        view_spec: false,
                        helper_spec: false,
                        routing_specs: false,
                        request_specs: false,
                        controller_specs: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
    # -- all .rb files in that directory are automatically loaded.
  end
end
