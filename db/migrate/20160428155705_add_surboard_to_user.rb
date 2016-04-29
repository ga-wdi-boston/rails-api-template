class AddUserToSurboard < ActiveRecord::Migration
  def change
    add_reference :users, :surfboard, index: true, foreign_key: :user_id
  end
end
