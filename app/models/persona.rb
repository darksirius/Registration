class Persona < ActiveRecord::Base

  validates :nombre, presence: true, length: {minimum: 3, maximum: 50}, :presence=> { :message => " La cellule ne peut pas rester vide ou completer avec N/A s'il ni
 a pas d'information" }
  validates :apelllido, presence: true, length: {minimum: 3, maximum: 50}, :presence=> { :message => " La cellule ne peut pas rester vide ou completer avec N/A s'il ni
 a pas d'information" }
  validates :fechaNacimiento, presence: true, :presence=> { :message => " La cellule ne peut pas rester vide ou completer avec N/A s'il ni
 a pas d'information" }
  validates :teleCelular, presence: true, length: {minimum: 9, maximum: 12}, :presence=> { :message => " La cellule ne peut pas rester vide ou completer avec N/A s'il ni
 a pas d'information" }
  validates :teleParticular, presence: true, length: {minimum: 9, maximum: 12}, :presence=> { :message => " La cellule ne peut pas rester vide ou completer avec N/A s'il ni
 a pas d'information" }
  validates :teleOficina, presence: true, length: {minimum: 9, maximum: 12}, :presence=> { :message => " La cellule ne peut pas rester vide ou completer avec N/A s'il ni
 a pas d'information" }
  validates :numeroDocumento, presence: true, :presence=> { :message => " La cellule ne peut pas rester vide ou completer avec N/A s'il ni
 a pas d'information" }
  validates_email_format_of :email, :message => 'Le format ne corespond pas', :presence=> { :message => " La cellule ne peut pas rester vide ou completer avec N/A s'il ni
 a pas d'information" }
  validates :profesion, :presence => true, length: {minimum: 3, maximum: 50}, :presence=> {:message => " La cellule ne peut pas rester vide ou completer avec N/A s'il ni
 a pas d'information" }
  validates :entreprise, length: {minimum: 3, maximum: 50}, :presence=> { :message => " La cellule ne peut pas rester vide ou completer avec N/A s'il ni
 a pas d'information" }

  belongs_to :nacionalidad
  belongs_to :doc_type

end