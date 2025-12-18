class CreateParks < ActiveRecord::Migration[8.0]
  def change
    create_table :parks do |t|
      t.string :nps_id
      t.string :name
      t.text :description
      t.string :states
      t.string :url
      t.integer :source

      t.timestamps
    end
  end
end
