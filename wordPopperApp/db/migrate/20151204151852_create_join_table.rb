class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :lines do |t|
      # t.index [:user_id, :line_id]
      # t.index [:line_id, :user_id]
    end
  end
end
