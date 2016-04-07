class Doc_type < ActiveRecord::Base
  
  has_many :personas
  has_many :students
  
end
