class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :user, :name, :address, :description, :availability_from, :availability_to, :sqft, :price, presence: true
end
