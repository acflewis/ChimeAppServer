class Uniqueresonates < ActiveRecord::Migration
  def up
    add_index :resonates, [:chime_id, :user_id], :unique => true
  end

  def down
    remove_index :resonates, [:chime_id, :user_id]
  end
end
