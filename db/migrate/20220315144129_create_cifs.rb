class CreateCifs < ActiveRecord::Migration[7.0]
  def change
    create_table :cifs, id: :uuid do |t|
      t.string :name
      t.string :nik
      t.string :ktp_number
      t.string :birthplace
      t.date :birthdate
      t.string :gender
      t.string :address
      t.string :phone_number
      t.float :income_amount
      t.string :parent_name
      t.string :occupation
      t.string :work_address
      t.string :spouse_name
      t.string :remark
      t.timestamps
    end
  end
end
