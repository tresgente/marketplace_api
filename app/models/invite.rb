class Invite < ApplicationRecord
  belongs_to :user

  validates :code, presence: true, uniqueness: true

  before_validation :generate_code, on: :create

  private

  def generate_code
    self.code = SecureRandom.hex(4).upcase
  end
end