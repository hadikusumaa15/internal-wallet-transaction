class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles, id: :uuid do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    add_reference :users, :role, foreign_key: true
  end
end
