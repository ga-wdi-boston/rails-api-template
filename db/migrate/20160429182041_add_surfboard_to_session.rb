class AddSurfboardToSession < ActiveRecord::Migration
  def change
    add_reference :surfboards, :session, index: true, foreign_key: true
  end
end
