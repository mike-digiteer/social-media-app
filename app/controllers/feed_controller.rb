class FeedController < ApplicationController
  def index
    @featured_posts = Post.where(featured: true, active: true).where("publish_date <= ?", Date.today.end_of_day)
    @recent_posts = Post.where(featured: false, active: true).where("publish_date <= ?", Date.today.end_of_day)
  end
end
