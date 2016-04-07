class NationalidadesId < ActiveRecord::Migration
  def change
    add_column :personas, :nacionalidades_id, :integer;
  end
end
