class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :nome
      t.text :descrizione
      t.date :durata
      t.integer :goal
      t.boolean :chiusa

      t.timestamps
    end
  end
end
