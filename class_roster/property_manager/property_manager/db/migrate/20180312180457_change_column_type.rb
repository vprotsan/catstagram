class ChangeColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column :properties, :rent, 'integer USING CAST(rent AS integer)'
  end
end
