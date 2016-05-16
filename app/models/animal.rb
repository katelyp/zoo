class Animal < ActiveRecord::Base

  has_many :cabinets, as: :occupiable

  CLASSIFICATIONS = ['Mammals', 'Birds', 'Reptiles', 'Amphibians', 'Fishes']

end
