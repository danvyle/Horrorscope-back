class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :username
      t.string :password_digest
      t.date :birthday
      t.time :birthtime
      t.integer :sign_id

      t.timestamps
    end
  end
end
