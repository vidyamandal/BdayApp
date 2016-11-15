class Guest < ActiveRecord::Base
	/validates :name, :email, :adult, :child, presence: true
	validates :attend, inclusion: { in: [true, false] }/
end
