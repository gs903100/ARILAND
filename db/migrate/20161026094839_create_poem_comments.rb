class CreatePoemComments < ActiveRecord::Migration
  def change
    create_table :poem_comments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :poem, index: true, foreign_key: true
      t.string :content

      t.timestamps null: false
    end
  end
end
