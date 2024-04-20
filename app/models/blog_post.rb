class BlogPost < ApplicationRecord

  validates :title, :author, presence: true

end
