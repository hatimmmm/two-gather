class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.integer :club_id
      t.string :event_name
      t.string :description
      t.string :location
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
