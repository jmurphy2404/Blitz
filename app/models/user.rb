class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

	

	enum user_type: [:client, :valet]
	after_initialize :set_default_user_type, :if => :new_record?
	def set_default_user_type
    	self.user_type ||= :client
  	end


  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :bikes
	has_many :jobs, foreign_key: :valet_id

end
