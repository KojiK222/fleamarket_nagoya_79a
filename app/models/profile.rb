class Profile < ApplicationRecord
  belongs_to :user

  VALID_NAME_REGEX= /\A[一-龥ぁ-ん]/
  VALID_NAME_KANA_REGEX= /\A[ァ-ヶー－]+\z/
  
  validates :first_name, presence: true, format: { with: VALID_NAME_REGEX }
  validates :last_name, presence: true, format: { with: VALID_NAME_REGEX }
  validates :first_name_kana, presence: true, format: { with: VALID_NAME_KANA_REGEX }
  validates :last_name_kana, presence: true, format: { with: VALID_NAME_KANA_REGEX }
  validates :birthday, presence: true

end
