class AddOwnerToClubs < ActiveRecord::Migration[7.1]
  def change
    add_reference :clubs, :owner, foreign_key: { to_table: :users }
  end
end
