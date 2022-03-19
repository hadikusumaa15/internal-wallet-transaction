module UuidSetter
  def set_uuid(data)
    # define uuid before create to db
    data.id = SecureRandom.uuid
  end
end