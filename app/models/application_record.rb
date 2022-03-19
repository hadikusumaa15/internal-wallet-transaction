class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  include UuidSetter
  # include PreventDeletion
end
