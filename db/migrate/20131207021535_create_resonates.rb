class CreateResonates < ActiveRecord::Migration
  def change
    create_table :resonates do |t|
      t.integer :user_id, :null => false
      t.integer :chime_id, :null => false
      t.timestamps
    end
  end
  
end
