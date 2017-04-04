class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # FIX ME TOO
  # attr_reader :current_user
  # helper_method :current_user

end
