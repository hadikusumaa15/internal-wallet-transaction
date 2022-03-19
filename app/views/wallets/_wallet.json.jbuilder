json.extract! wallet, :id, :amount, :remark, :receiver_user_id, :sender_user_id, :created_at, :updated_at
json.url wallet_url(wallet, format: :json)
