class CreateStoryComments < ActiveRecord::Migration
  def change
    create_table :story_comments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :story, index: true, foreign_key: true
      t.string :content

      t.timestamps null: false
    end
  end
end
