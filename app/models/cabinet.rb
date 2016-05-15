class Cabinet < ActiveRecord::Base

  belongs_to :occupiable, polymorphic: true

end
