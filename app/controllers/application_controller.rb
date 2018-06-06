class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_request_variant

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:email,:phone_number,:description])
  end
  # It is useful for Action Pack variants, which is new feature from Rails 4.1.
  # You can switch view templates by +pc or +smartphone in file name.
  # http://guides.rubyonrails.org/4_1_release_notes.html#action-pack-variants
  def set_request_variant
    request.variant = request.device_variant # :pc, :smartphone
  end
end
