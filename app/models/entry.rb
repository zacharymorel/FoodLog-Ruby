class Entry < ApplicationRecord
  def day
    created_at.strftime('%b %e, %Y')
  end
end
