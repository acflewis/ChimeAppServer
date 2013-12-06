class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.string :title, :null => false
      t.string :link
      t.string :category
      t.string :chime_reason, :default => "because"
      t.timestamps
    end
  end
end