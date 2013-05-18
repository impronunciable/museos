class Museum < ActiveRecord::Base
  attr_accessible :descripcion, :direccion, :lat, :long, :nombre
end
