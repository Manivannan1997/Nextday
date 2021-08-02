class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true, length: {minimum: 10}
  has_many_attached :images

  def thumbnail input
    return self.images[input].variant(resize: '300x300').processed
  end
end
