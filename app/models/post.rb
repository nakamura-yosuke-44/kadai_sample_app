class Post < ApplicationRecord
    validates :body, presence: true, length: {minimum: 5, maximum: 140}
    validates :title, presence: true
    has_many :comments, dependent: :destroy
end
