class CreateSigns < ActiveRecord::Migration[5.2]
  def change
    create_table :signs do |t|
      t.integer :sign_id
      t.string :name

      t.timestamps
    end
  end
end
