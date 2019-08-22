class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings

  include PgSearch::Model
  pg_search_scope :search_by_specialty,
  against: [:specialty],
  using: {
    tsearch: { prefix: true }
  }
end
