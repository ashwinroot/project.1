class AddLevelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :level, :decimal
  end
end
