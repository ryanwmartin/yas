class CreateVisitors < ActiveRecord::Migration[6.0]
  def change
    create_table :visitors do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :project
      t.decimal :donation_amount, precision: 6, scale: 2

      t.timestamps
    end
  end
end
