module UuidSetter
  def set_uuid(data)
    # define uuid before create to db
    seq = UUIDv6::Sequence.new
    uuid = seq.call

    data.id = uuid
  end
end