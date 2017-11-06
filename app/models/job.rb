class Job < ApplicationRecord
	belongs_to :bike
	belongs_to :user
	belongs_to :valet_id, optional: true, class_name: 'User'
end
