class Comment < ApplicationRecord
  include Summary
  belongs_to :article
end
