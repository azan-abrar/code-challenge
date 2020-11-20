class AddCityStateToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :city,  :string
    add_column :companies, :state, :string
  end
end
