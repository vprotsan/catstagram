class AddRepairsToProperties < ActiveRecord::Migration[5.1]
  def change
    add_reference :properties, :repair, foreign_key: true
  end
end
