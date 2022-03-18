class User < ApplicationRecord
  before_create -> { set_uuid(self) }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sender_user, class_name: 'Wallet', foreign_key: 'sender_user_id', dependent: :nullify
  has_many :receiver_user, class_name: 'Wallet', foreign_key: 'receiver_user_id', dependent: :nullify
end
