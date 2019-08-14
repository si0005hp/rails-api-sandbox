class PaperBook < ApplicationRecord
  self.table_name = 'books'

  has_many :book_labels, foreign_key: :book_id
end
