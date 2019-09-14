class RemoveDonationFromVisitors < ActiveRecord::Migration[6.0]
  def change

    remove_column :visitors, :donation_amount, :decimal
  end
end
