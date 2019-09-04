class CreateRetrogrades < ActiveRecord::Migration[5.2]
  def change
    create_table :retrogrades do |t|
      t.string :name
      t.integer :sign_id
      t.text :explanation

      t.timestamps
    end
  end
end
