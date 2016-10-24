class StaticPagesController < ApplicationController
  def home
    @post = current_user.posts.build if logged_in?
  end

  def about
  end

  def portfolio
  end

  def blog
      @post = current_user.posts.build if logged_in?
      @feed_items = feed.paginate(page: params[:page])
  end

  def contact
  end
end
