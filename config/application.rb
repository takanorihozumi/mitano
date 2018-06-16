require_relative 'boot'

require 'rails/all'
require 'amazon/ecs'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# amazon TODO
Amazon::Ecs.debug = true
Amazon::Ecs.options = {
  :associate_tag => "takanori501-22",
    :AWS_access_key_id => "AKIAI5NY2QDECRNXCTXQ",
    :AWS_secret_key => "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"
}
module ShareImpression
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # 認証トークンをremoteフォームに埋め込む
    config.action_view.embed_authenticity_token_in_remote_forms = true
    config.time_zone = 'Asia/Tokyo'
  end
end
