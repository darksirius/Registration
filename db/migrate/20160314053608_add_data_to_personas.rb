class AddDataToPersonas < ActiveRecord::Migration
  def change
    add_column :personas, :create_at, :datetime
    add_column :personas, :update_at, :datetime
  end
end
