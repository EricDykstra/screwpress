class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tags, array: true
      t.integer :post_id
    end
  end
end
