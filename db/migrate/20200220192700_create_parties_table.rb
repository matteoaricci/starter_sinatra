class CreatePartiesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.integer :trainer_id
      t.integer :pokemon_id
    end
  end
end
