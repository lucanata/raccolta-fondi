class CreateAims < ActiveRecord::Migration
  def change
    create_table :aims do |t|
      t.string :scopo
      t.integer :importo

      t.timestamps
    end
  end
end
