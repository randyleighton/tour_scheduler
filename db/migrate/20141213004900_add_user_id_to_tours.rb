class AddUserIdToTours < ActiveRecord::Migration
  def change
    add_column :tours, :user_id, :integer
    add_column :amenities, :user_id, :integer
  end
end
