class Student < ActiveRecord::Base
  belongs_to :nacionalidad
  belongs_to :doc_type

end