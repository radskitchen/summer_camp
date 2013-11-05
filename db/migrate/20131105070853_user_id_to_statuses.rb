class UserIdToStatuses < ActiveRecord::Migration
  def up
  	add_column :statuses, :user_id, :integer
  	add_index :statuses, :user_id
  	remove_column :statuses, :name
  end

  def down

  end
end
