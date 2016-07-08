class Tamano < ActiveRecord::Base
  has_and_belongs_to_many :productos

  validates :tamano, presence:{ message: 'es requerido' }, length: {minimum: 3, maximum:50 , message: 'la longitud debe de ser de entre 3 a 50 caracteres'}
  validates :descripcion, presence: { message: 'es requerido' }
end
