class CreateDocTypes < ActiveRecord::Migration
  def change
    create_table :doc_types do |f|

       f.string :email

    end
  end
end
