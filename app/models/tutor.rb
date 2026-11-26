class Tutor < ApplicationRecord
  before_validation :normalizar_cpf

  has_many :pets

  encrypts :cpf, deterministic: true

  validates :cpf,  presence: true, uniqueness: true, length: { is: 11 }



  private

  def normalizar_cpf
    self.cpf = cpf.gsub(/\D/, "") if cpf.present?
  end
end
