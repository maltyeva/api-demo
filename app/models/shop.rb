class Shop < ApplicationRecord
    include PgSearch::Model

	 pg_search_scope :global_search,
    against: [:description, :address, :category, :name],
    using: {
      tsearch: {prefix: true}
    }
  end
