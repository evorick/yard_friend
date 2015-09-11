class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :listing

  validates :user, :listing, :check_in, :check_out, presence: true
end
