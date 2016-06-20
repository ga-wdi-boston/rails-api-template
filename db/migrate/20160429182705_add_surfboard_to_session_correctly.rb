class AddSurfboardToSessionCorrectly < ActiveRecord::Migration
  def change
    add_reference :sessions, :surfboard, index: true, foreign_key: true
  end
end
