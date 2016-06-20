class AddUserToSessions < ActiveRecord::Migration
  def change
    add_reference :users, :session, index: true, foreign_key: true
  end
end
