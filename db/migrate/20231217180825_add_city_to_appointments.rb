class AddCityToAppointments < ActiveRecord::Migration[7.1]
  def change
    add_column :appointments, :city, :string
  end
end
