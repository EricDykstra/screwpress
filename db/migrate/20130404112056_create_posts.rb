class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |p|
      p.string :title, :author
      p.text :text
      p.integer :tag_id
      p.timestamps
    end
  end
end
