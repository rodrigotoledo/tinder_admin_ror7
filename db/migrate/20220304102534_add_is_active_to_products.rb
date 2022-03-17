class AddIsActiveToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :is_active, :boolean, default: true
  end
end
