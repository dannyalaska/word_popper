class AddUserIdToLines < ActiveRecord::Migration
  def change
    add_column :lines, :userId, :integer
  end
end
