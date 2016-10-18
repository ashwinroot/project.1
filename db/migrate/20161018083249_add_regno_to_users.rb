class AddRegnoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :regno, :string
  end
end
