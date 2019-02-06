class Publisher < ApplicationRecord
  #R
  has_many :books 
  #S
  scope :alphabetical, -> { order('name') }
  #V
  validates_presence_of :name
end
