class BusinessFile < ApplicationRecord
  belongs_to :user

  validates :file_title, presence: true
end
