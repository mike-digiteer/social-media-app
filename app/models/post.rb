class Post < ApplicationRecord
  validates :body, presence: true, length: { maximum: 1500 }
  validates :publish_date, presence: true
  validate :limit_featured_posts, if: :featured
  belongs_to :user

  private

  def limit_featured_posts
    if Post.where(featured: true).count >= 5
      errors.add(:featured, "There can only be 5 featured posts at a time.")
    end
  end
end
