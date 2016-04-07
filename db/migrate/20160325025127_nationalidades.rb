class Nationalidades < ActiveRecord::Migration
  def change
    create_table :nacionalidades do |t|
      t.string :description
        end
end
end
