class SetDefaultUserForRoasters < ActiveRecord::Migration[7.0]
  def change
    Roaster.where(user_id: nil).update_all(user_id: User.find_by(email: 'camilo@camilo.com').id)
    change_column_null :roasters, :user_id, false
  end
end
