class AddColumnMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :name, :string
    add_column :movies, :rating, :integer
    add_column :movies, :review, :string
  end
end
