class User < ActiveRecord::Base
  has_one :account
  has_many :desks
  has_many :played_numbers
  has_many :invoices
end
