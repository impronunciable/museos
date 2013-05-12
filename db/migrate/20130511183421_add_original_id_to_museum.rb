class AddOriginalIdToMuseum < ActiveRecord::Migration
  def change
    add_column :museums, :original_id_key, :integer
    add_column :museums, :horarios, :text
    add_column :museums, :telefonos, :text
    add_column :museums, :precio, :text
    add_column :museums, :transporte, :text
  end
end
