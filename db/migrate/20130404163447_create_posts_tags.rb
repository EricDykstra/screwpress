class CreatePostsTags < ActiveRecord::Migration
  create_table :posts_tags, :id => false do |t|
    t.integer :post_id
    t.references :tag_id
  end
end
