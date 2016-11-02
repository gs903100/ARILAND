class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string :picture
      t.text :information

      t.timestamps null: false
    end
  end
end
