class AddClout < ActiveRecord::Migration
  def up
    add_column(:users, :clout, :integer)
  end

  def down
    remove_column(:users, :clout, :integer)
  end
end
