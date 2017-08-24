class AddUserToRegistrations < ActiveRecord::Migration[5.0]
  def change
    add_reference :registrations, :user, foreign_key: true
  end
end
