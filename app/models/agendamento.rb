class Agendamento < ApplicationRecord
  belongs_to :tutor
  belongs_to :pet

  validates :data, comparison: {
    greater_than_or_equal_to: -> { Date.current }
  }
end
