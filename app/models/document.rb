class Document < ApplicationRecord
  belongs_to :business_file

  validates :company_name, presence: true
  validates :company_name_kana, presence: true
  validates :title, presence: true
end
