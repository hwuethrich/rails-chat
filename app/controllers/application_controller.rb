class ApplicationController < ActionController::Base
  include Authentication

  def index; end

  def reset
    Message.delete_all
    system_user.say 'Welcome to the chat! 😎'

    redirect_to :root
  end
end
