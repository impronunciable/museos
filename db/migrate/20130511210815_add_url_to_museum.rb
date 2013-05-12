class AddUrlToMuseum < ActiveRecord::Migration
  def change
    add_column :museums, :url, :string
  end
end
