class Quote < ApplicationRecord
  validates :statement, presence: true
  validates :author, presence: true
end
