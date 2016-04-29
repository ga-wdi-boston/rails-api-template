class RemoveSurfboardIndexFromUser < ActiveRecord::Migration
  def change
    remove_reference(:users, :surfboard)
  end
end
