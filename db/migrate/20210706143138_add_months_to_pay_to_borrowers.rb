class AddMonthsToPayToBorrowers < ActiveRecord::Migration[6.1]
  def change
    add_column :borrowers, :months_to_pay, :string
  end
end
