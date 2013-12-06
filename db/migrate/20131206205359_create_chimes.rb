class CreateChimes < ActiveRecord::Migration
  def change
    create_table :chimes do |t|
      t.integer :cause_id, :null => false
      t.integer :user_id
      t.string :reason
      t.timestamps
    end
  end
end
