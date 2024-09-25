class ManageController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.admin?
      @posts = Post.all
    else
      @posts = current_user.posts
    end
  end
end
