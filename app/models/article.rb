class Article < ApplicationRecord
  include Summary
  has_many :comments, dependent: :destroy
end
