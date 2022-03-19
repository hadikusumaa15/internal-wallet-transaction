class User < ApplicationRecord
  before_create -> { set_uuid(self) }
  after_create :add_demo_balance
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role, optional: true
  belongs_to :cif, optional: true
  has_many :credits, class_name: 'Wallet', foreign_key: 'sender_user_id', dependent: :destroy
  has_many :debits, class_name: 'Wallet', foreign_key: 'receiver_user_id', dependent: :destroy

  def check_balance
    self.debits.pluck(:amount).compact.sum - self.credits.pluck(:amount).compact.sum
  end

  def add_demo_balance
    demo_balance = Wallet.new(amount: 1_000_000, remark: 'demo_balance', receiver_user_id: self.id)
    demo_balance.save
  end
end
