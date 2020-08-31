class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :basic

  # def after_sign_out_path_for(resource)
  #   root_path
  # end

  def self.search(search) 
    if search
      Article.where('restaurant LIKE ? OR menu LIKE ?', "%#{search}%", "%#{search}%")
    else
      Article.all
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
  # Basic認証
  # http_basic_authenticate_with :name => ENV['BASIC_AUTH_USERNAME'], :password => ENV['BASIC_AUTH_PASSWORD'] if Rails.env == "production"

  private
  def basic
    authenticate_or_request_with_http_basic do |name, password|
      name == ENV['BASIC_AUTH_NAME'] && password == ENV['BASIC_AUTH_PASSWORD'] if Rails.env == "production"
    end
  end
end