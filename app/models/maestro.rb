# == Schema Information
#
# Table name: maestros
#
#  id                  :integer(4)      not null, primary key
#  idmaestro           :string(8)       not null
#  nombre              :string(50)
#  email               :string(80)
#  created_at          :datetime        not null
#  updated_at          :datetime        not null
#  password_digest     :string(255)
#  remember_token      :string(255)
require 'rubygems'
require 'composite_primary_keys'
class Maestro < ActiveRecord::Base
   attr_accessible :idmaestro,:nombre, :email , :password,  :password_confirmation, :avatar, :avatar_cache
   self.primary_keys = :idmaestro
   mount_uploader :avatar, AvatarUploader
   validates_presence_of :idmaestro, :nombre, :email, :password,  :message => 'No puede estar en blanco'
   validates_length_of :password,:minimum => 6, :message => 'Tu contrasena debe tener minimo 6 caracteres '
   validates_length_of :password, :maximum => 10,  :message => 'Tu contrasena solo debe tener maximo 10 caracteres '
   has_secure_password  
   before_save :create_remember_token
   validates_length_of :idmaestro,   :maximum => 8 , :message => 'Tu id debe tener 8 digitos'
   validates_length_of :idmaestro,   :minimum => 7 , :message => 'Tu id debe tener 8 digitos'
   validates_length_of :nombre, :maximum => 50 , :message => 'Tu nombre debe tener maximo 50 caracteres'

 

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of :email, :with =>  VALID_EMAIL_REGEX , :message => 'Formato invalido' 
  validates_uniqueness_of :idmaestro, :message => 'Ya existe un maestro registrado con este ID'

  validates_presence_of  :password_confirmation, :message =>'No puede estar en blanco'
  
  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
