class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :user, :name, :address, :description, :availability_from, :availability_to, :sqft, :price, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :availability_from, :timeliness => {:on_or_after => lambda { Date.current }, :type => :date}
  validates :availability_to, :timeliness => {:on_or_after => lambda { Date.current }, :type => :date}

  has_attached_file :image, styles: { 
    large: "600x600>", 
    medium: "300x300#", 
    thumb: "100x100#" }, 
    #TODO FIX THE DEFAULT IMAGE URL BELOW.
    default_url: "/images/default_:style.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

