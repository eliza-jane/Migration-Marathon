class CreateReader < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string :full_name, null:false
      t.string :email, null: false, uniqueness: true
      t.string :phone_number, null: false, uniqueness: true
    end
  end
end
