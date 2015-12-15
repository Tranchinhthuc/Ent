class Desk < ActiveRecord::Base
  belongs_to :user
  has_many :played_numbers
end
