class RemoveColumnsRent < ActiveRecord::Migration[5.1]
  def change
    remove_columns :properties, :rent
  end
end
