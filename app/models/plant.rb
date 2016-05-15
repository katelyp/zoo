class Plant < ActiveRecord::Base

  has_many :cabinets, as: :occupiable

end
