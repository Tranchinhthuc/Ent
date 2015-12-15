class PlayedNumber < ActiveRecord::Base
  belongs_to :user
  belongs_to :desk
  belongs_to :invoice

end
