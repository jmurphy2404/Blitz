class Bike < ApplicationRecord
  belongs_to :user
  has_many :jobs

  # mount_uploader :image, ImageUploader

  def bike_full
  	"#{make} - #{model} - #{color}"
  end


 
end
