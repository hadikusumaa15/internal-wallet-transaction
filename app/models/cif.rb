class Cif < ApplicationRecord
  has_many :users
  before_create -> { set_uuid(self) }
end
