class CreateWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :wallets, id: :uuid do |t|
      t.float :amount
      t.string :remark

      if Rails.env == 'production'
        t.uuid :receiver_user_id, foreign_key: true
        t.uuid :sender_user_id, foreign_key: true
      else
        t.string :receiver_user_id, foreign_key: true
        t.string :sender_user_id, foreign_key: true
      end

      t.timestamps
    end
  end
end
