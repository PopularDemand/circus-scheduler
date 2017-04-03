class Studio < ApplicationRecord
  has_many :users, :events

end
