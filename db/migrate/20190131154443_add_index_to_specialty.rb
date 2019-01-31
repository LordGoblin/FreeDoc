class AddIndexToSpecialty < ActiveRecord::Migration[5.2]
  def change
    add_reference :join_table_specialty_doctors, :doctor, foreign_key: true
    add_reference :join_table_specialty_doctors, :specialty, foreign_key: true
  end
end
