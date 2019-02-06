class Author < ApplicationRecord
	#R
	has_many :book_authors
	has_many :books, through: :book_authors  
	#V
	validates_presence_of :first_name, :last_name 
	#S
	scope :alphabetical, -> { order('last_name, first_name') }
	#Methods 
	def name
  		"#{last_name}, #{first_name}"
	end
end
