class CreateUsers < ActiveRecord::Migration
  has_many :lines, dependent: :destroy
  def change
    create_table :users do |t|
      t.string :username
      t.timestamps null: false
    end
  end
end
