class User < ApplicationRecord
  has_secure_password
  has_many :invites

  validates :email, presence: true, uniqueness: true
  validates :mobile, presence: true, uniqueness: true
  validates :role, inclusion: { in: %w[buyer seller] }
  validates :invite_code, presence: true, if: :seller?

  def seller?
    role == 'seller'
  end
end