require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Viabilidade
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = "pt-BR"
    config.encoding = "utf-8"
    config.assets.paths << Rails.root.join("app","assets","fonts")

    unless Rails.env.production?
        ## liberando rede
        config.web_console.whitelisted_ips = ['127.0.0.1','10.0.0.0/16']
    end

  end
end
