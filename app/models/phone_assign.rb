class PhoneAssign < ApplicationRecord
  NUMBER_RANGE = (1111111111..9999999999)

  validates :phone_no, uniqueness: true, presence: true, inclusion: {in: NUMBER_RANGE}

  def random_phone_number
    Random.rand(NUMBER_RANGE)
  end
end
