class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :picture
      t.string :speciality
      t.string :address

      t.timestamps
    end
  end
end
