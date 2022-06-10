class PagesController < ApplicationController
  def home
    @blogs=Blogs.all
  end

  def about
  end

  def contact
  end
end
