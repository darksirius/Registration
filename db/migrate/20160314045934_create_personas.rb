class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
    t.string :nombre
    t.string :apelllido
    t.date :fechaNacimiento
    t.string :teleCelular
    t.string :teleParticular
    t.string :teleOficina
    t.string :numeroDocumento
    t.string :email

    end
  end
end
