class Animal < ActiveRecord::Base

  has_many :cabinets, as: :occupiable

end
