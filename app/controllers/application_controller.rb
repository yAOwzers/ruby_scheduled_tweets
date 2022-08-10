class ApplicationController < ActionController::Base
  before_action :set_current_user # before you run any actions

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id]) # the current user if it can find one
    end
  end
end
