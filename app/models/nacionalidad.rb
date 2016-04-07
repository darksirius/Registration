class Nacionalidad < ActiveRecord::Base

  has_many :personas
  has_many :students
  accepts_nested_attributes_for :personas
end