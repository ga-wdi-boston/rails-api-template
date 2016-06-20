class AddUserToSession < ActiveRecord::Migration
  def change
    add_reference :sessions, :user, index: true, foreign_key: true
  end
end
