class CreateHoroscopes < ActiveRecord::Migration[5.2]
  def change
    create_table :horoscopes do |t|
      t.integer :horoscope_id
      t.date :date
      t.text :daily_horoscope
      t.integer :sign_id

      t.timestamps
    end
  end
end
