module PreventDeletion
  def delete
    raise ActiveRecord::Rollback
  end

  def destroy
    raise ActiveRecord::Rollback
  end

  def delete_all
    raise ActiveRecord::Rollback
  end

  def destroy_all
    raise ActiveRecord::Rollback
  end
end