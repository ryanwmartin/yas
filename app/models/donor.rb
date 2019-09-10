class Donor < ApplicationRecord
  enum status: [
    :active,
    :inactive
  ]

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
end
