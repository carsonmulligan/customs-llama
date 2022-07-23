class CreateShippers < ActiveRecord::Migration[6.1]
  def change
    create_table :shippers do |t|
      t.string :name
      t.string :address
      t.string :poc_name
      t.string :poc_email
      t.string :poc_phone_number
      t.string :office_locations
      t.string :shipper_consignee_relationships
      t.string :payment_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
