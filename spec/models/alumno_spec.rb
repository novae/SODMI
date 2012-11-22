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

require 'spec_helper'

describe Alumno do
  pending "add some examples to (or delete) #{__FILE__}"
end
