# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps null: false

      if Rails.env == 'production'
        t.uuid :cif_id, foreign_key: true
        t.uuid :role_id, foreign_key: true
      else
        t.string :cif_id, foreign_key: true
        t.string :role_id, foreign_key: true
      end
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :cif_id
    add_index :users, :role_id
  end
end
