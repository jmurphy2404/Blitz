class Bike < ApplicationRecord
  belongs_to :user
  has_many :jobs
  mount_uploader :image, ImageUploader
end
