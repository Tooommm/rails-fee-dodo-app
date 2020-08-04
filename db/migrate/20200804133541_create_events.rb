class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.date :date
      t.datetime :start_time
      t.time :sleep_time
      t.datetime :end_time
      t.text :notes
      t.references :user, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
