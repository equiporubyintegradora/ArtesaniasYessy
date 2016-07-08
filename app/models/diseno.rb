class Diseno < ActiveRecord::Base
  has_and_belongs_to_many :productos

  mount_uploader :diseno, DisenoUploader

  validates_processing_of :diseno
  validate :diseno_size_validation

  private
  def diseno_size_validation
    errors[:diseno] << "Debe de ser menor a 2 MB" if diseno.size > 2.megabytes
  end
end
