class User < ApplicationRecord
  has_many :acquaintances, dependent: :destroy, foreign_key: :from_id
  has_many :familiar_people, through: :acquaintances, source: :to, as: :from

  def recognize!(other_user)
    acq = Acquaintance.create(from: self, to: other_user)
    acq.know!
  end
end
