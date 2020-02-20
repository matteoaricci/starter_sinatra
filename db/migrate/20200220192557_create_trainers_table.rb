class CreateTrainersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :catchphrase
    end
  end
end
