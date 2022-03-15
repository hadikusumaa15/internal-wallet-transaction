class Cif < ApplicationRecord
  before_create -> { set_uuid(self) }
end
