# == Schema Information
#
# Table name: alumnos
#
#  id         :integer(4)      not null, primary key
#  nc         :string(8)
#  nombre     :string(50)
#  email      :string(80)
#  password   :string(255)
#  avance     :float
#  created_at :datetime        not null
#  updated_at :datetime        not null
#
class Alumno < ActiveRecord::Base
  attr_accessible :avance, :email, :nc, :nombre, :password, :password_confirmation, :avatar, :avatar_cache
  mount_uploader :avatar, AvatarUploader
  validates_presence_of :nc, :nombre, :email, :password,  :message => 'No puede estar en blanco'
  validates_length_of :password,:minimum => 6, :message => 'Tu contrasena debe tener minimo 6 caracteres '
  validates_length_of :password, :maximum => 10,  :message => 'Tu contrasena solo debe tener maximo 10 caracteres '
  has_secure_password
  before_save :create_remember_token
  validates_length_of :nc,   :maximum => 8 , :message => 'Tu numero de control debe tener 8 digitos'
  validates_length_of :nc,   :minimum => 7 , :message => 'Tu numero de control debe tener 8 digitos'
  validates_length_of :nombre, :maximum => 50 , :message => 'Tu nombre debe tener maximo 50 caracteres'
  validates_length_of :password, :maximum => 10,  :message => 'Tu contrasena solo debe tener maximo 10 caracteres '
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of :email, :with =>  VALID_EMAIL_REGEX , :message => 'Formato invalido'
  validates_uniqueness_of :nc, :message => 'Ya existe un alumno registrado con este ID'
  validates_presence_of  :password_confirmation, :message =>'No puede estar en blanco'

  private
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
