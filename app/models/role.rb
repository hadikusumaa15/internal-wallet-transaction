class Role < ApplicationRecord
  before_create -> { set_uuid(self) }
end
