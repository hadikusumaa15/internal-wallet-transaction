class Wallet < ApplicationRecord
  before_create -> { set_uuid(self) }
  validates :amount, presence: true
  validate :sufficent_balance

  belongs_to :sender_user, :class_name => 'User', dependent: :destroy, optional: true
  belongs_to :receiver_user, :class_name => 'User', dependent: :destroy, optional: true

  def sufficent_balance
    return unless self.sender_user.present?

    if self.amount.to_f > self.sender_user.check_balance.to_f
      errors.add(:amount, "Balance is not enough!")
    end
  end
end
