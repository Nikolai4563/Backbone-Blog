class PostsController < ApplicationController
  respond_to :html, :json

  def index
    #@posts = Post.includes(:user)
    #respond_to do |format|
    #  format.html { render :text => '', :layout => 'application'}
    #  format.json { render :json => @posts }
    #end
   # render :json => posts
  end

end