class Museum < ActiveRecord::Base
  attr_accessible :descripcion, :direccion, :lat, :long, :nombre, :original_id_key, :horarios, :telefonos, :precio, :transporte, :url

  validate :original_id_key, uniqueness: true
end
