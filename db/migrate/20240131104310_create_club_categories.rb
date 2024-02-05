class CreateClubCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :club_categories do |t|
      t.references :club, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
