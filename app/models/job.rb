class Job < ApplicationRecord
	enum status: [:order_received, :in_progress, :completed]
	after_initialize :set_default_status, :if => :new_record?
	def set_default_status
    	self.status ||= :order_received
  	end

	belongs_to :bike
	belongs_to :user
	belongs_to :valet, optional: true, class_name: 'User'

	
end
