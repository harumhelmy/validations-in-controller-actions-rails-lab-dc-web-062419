class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 40 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction Speculative Fiction) }
end
