class CreateCheckout < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.belongs_to :book, null: false
      t.timestamps
    end
  end
end
