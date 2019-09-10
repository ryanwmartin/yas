class CreateDonors < ActiveRecord::Migration[6.0]
  def change
    create_table :donors do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :project
      t.decimal :donation_amount, precision: 5, scale: 2
      t.integer :status

      t.timestamps
    end
  end
end
