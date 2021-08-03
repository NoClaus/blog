class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :content
      t.string :state

      t.timestamps
    end
  end
end
