class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :user, :name, :address, :description, :availability_from, :availability_to, :sqft, :price, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300#", thumb: "100x100#" }, default_url: ":style_missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
