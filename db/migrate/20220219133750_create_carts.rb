class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :uuid
      t.string :name
      t.string :phone
      t.string :address
      t.string :status
      t.string :scheduled_at

      t.timestamps
    end
  end
end
