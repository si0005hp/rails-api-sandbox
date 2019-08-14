class BookLabel < ApplicationRecord
  ### [NG]: book_label.book returns nil in the case book is Novel
  # belongs_to :book, foreign_key: 'book_id'
  ### [OK]: book_label.book returns object in both case
  belongs_to :book, class_name: 'PaperBook', foreign_key: 'book_id'
end
