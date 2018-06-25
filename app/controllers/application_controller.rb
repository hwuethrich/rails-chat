class ApplicationController < ActionController::Base
  include Authentication

  def index; end

  def reset
    Message.delete_all
    system_user.say 'Welcome to the chat! 😎'
    redirect_to :root
  end

  def logout
    system_user.say 'User %s logged out' % current_user
    logout!
    redirect_to :root
  end
end
