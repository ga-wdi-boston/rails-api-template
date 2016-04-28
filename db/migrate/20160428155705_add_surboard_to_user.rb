class AddSurboardToUser < ActiveRecord::Migration
  def change
    ALTER TABLE surfboards
    add_reference :users, :surfboard, index: true, foreign_key: true
  end
end
