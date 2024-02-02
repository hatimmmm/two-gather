class CreateClubCategory < ActiveRecord::Migration[7.1]
  def change
    create_table :club_category do |t|
      t.references :club, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end