class AddUserToMessage < ActiveRecord::Migration[5.2]
  def change
    user = User.system_user
    add_reference :messages, :user, foreign_key: true, null: false, default: user.id
  end
end
