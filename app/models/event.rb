class Event < ApplicationRecord
  validates :name, :description, :user_id, presence: true
  belongs_to :user, :studio
end
