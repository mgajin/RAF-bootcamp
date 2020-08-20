class RenameUserTableName < ActiveRecord::Migration[6.0]
  def change
    rename_table :users, :students
  end
end
