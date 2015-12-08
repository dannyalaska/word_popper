class Line < ActiveRecord::Base
  has_and_belongs_to_many :users;
  validates :line, presence: true, length: {maximum: 30}
end
