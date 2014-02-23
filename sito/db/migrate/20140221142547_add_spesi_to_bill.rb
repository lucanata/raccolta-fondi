class AddSpesiToBill < ActiveRecord::Migration
  def change
    add_column :bills, :spesi, :integer, :default => 0
  end
end
