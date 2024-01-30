class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.refrences :club, null: false, foreign_key: true
      t.string :event_name
      t.string :description
      t.string :location
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
