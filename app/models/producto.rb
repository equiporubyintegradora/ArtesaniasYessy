class Producto < ActiveRecord::Base
  has_and_belongs_to_many :tamanos
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :disenos

  mount_uploader :fotografia, FotografiaUploader

  validates_processing_of :fotografia
  validate :fotografia_size_validation

  private
  def fotografia_size_validation
    errors[:fotografia] << "Debe de ser menor a 2 MB" if fotografia.size > 2.megabytes
  end
end
