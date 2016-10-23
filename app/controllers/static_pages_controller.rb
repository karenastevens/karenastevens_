class StaticPagesController < ApplicationController
  def home
    @post = current_user.posts.build if logged_in?
  end

  def about
  end

  def portfolio
  end

  def blog
    if logged_in?
      @post = current_user.posts.build if logged_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def contact
  end
end
