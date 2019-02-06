class Book < ApplicationRecord
  #Validations 
  validates_presence_of :title                        
  validates_numericality_of :units_sold, only_integer: true 

  #Relationships
  belongs_to :publisher
  has_many :book_authors
  has_many :authors, through: :book_authors 

  #Scopes 
  scope :alphabetical, -> { order('title') }
  

end
