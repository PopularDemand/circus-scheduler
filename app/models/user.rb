class User < ApplicationRecord
  validates :first_name, :last_name, :title, :studio, :city, :state, presence: true
  has_many :events
  belongs_to :studio
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
