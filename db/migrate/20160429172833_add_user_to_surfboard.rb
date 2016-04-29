class AddUserToSurfboard < ActiveRecord::Migration
  def change
    add_reference :surfboards, :user, index: true, foreign_key: true
  end
end
