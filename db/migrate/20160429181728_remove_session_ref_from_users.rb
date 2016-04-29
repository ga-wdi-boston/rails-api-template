class RemoveSessionRefFromUsers < ActiveRecord::Migration
  def change
    remove_reference(:users, :session)
  end
end
