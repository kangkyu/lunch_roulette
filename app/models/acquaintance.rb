class Acquaintance < ApplicationRecord
  belongs_to :from, class_name: 'User'
  belongs_to :to, class_name: 'User'

  enum do_you_know: %i(no_answer know)
end
