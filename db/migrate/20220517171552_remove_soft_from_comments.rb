class RemoveSoftFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :deleted_at,:datetime
  end
end
