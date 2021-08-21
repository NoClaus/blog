class AddStateToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :state, :integer
    
    add_index :posts, [:title, :description, :updated_at], order: {updated_at: 'desc'}, where: 'state = 1'
  end
end
