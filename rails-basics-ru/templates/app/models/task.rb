class Task < ApplicationRecord
  validates :name, presence: true
  validates :status, presence: true
  validates :creator, presence: true

  attribute :status, :string, default: -> { 'new' }
  attribute :completed, :boolean, default: -> { false }
end
