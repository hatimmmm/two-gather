class CreateMemberships < ActiveRecord::Migration[7.1]
  def change
    create_table :memberships do |t|
      t.refrences :user, null: false, foreign_key: true
      t.refrences :club, null: false, foreign_key: true
      t.refrences :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
