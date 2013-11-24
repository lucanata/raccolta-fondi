class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :nome, :string
    add_column :users, :cognome, :string
    add_column :users, :via, :string
    add_column :users, :ncivico, :string
    add_column :users, :cap, :integer
    add_column :users, :paese, :string
    add_column :users, :prov, :string
    add_column :users, :datanascita, :date
    add_column :users, :associazione, :boolean
    add_column :users, :piva_codf, :string
  end
end
