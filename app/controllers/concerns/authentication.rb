module Authentication
  extend ActiveSupport::Concern

  def current_user
    @current_user ||= begin
      if session[:current_user]
        User.find_or_create_by(name: session[:current_user])
      else
        User.create(name: Faker::FunnyName.name).tap do |user|
          logger.info('NEW USER CREATED: %s' % user)

          system_user.say '%s logged in' % user

          session[:current_user] = user.name
        end
      end
    end
  end

  def logout!
    session.delete(:current_user)
  end

  def system_user
    @system_user ||= User.system_user
  end
end
