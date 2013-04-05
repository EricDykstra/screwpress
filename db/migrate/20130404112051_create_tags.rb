class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.text :tag
      t.integer :post_id
    end
  end
end
