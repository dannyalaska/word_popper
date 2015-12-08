class CreateLines < ActiveRecord::Migration
  has_and_belongs_to_many :users
  def change
    create_table :lines do |t|
      t.string :line

      t.timestamps null: false
    end
  end
end
