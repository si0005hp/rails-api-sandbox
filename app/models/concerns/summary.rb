module Summary
  extend ActiveSupport::Concern
  
  def summarize
    Faker::Lorem.paragraph(1)
  end
end