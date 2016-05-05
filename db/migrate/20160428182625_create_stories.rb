class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :title, null: false
      t.text :body, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
