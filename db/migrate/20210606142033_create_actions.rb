class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.integer :date, null: false
      t.integer :serial_num
      t.time :start_time
      t.time :end_time
      t.string :destination
      t.string :transportation
      t.string :departure
      t.string :arrival
      t.string :attendees
      t.string :attendees_details
      t.text :other

      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
