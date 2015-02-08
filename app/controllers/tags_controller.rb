class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end
  def index
  	@tags = Tag.all
  end
  def destroy
  	@tag = Tag.find(params[:id])
  	Tag.destroy(@tag)
  	flash.notice = "Tag '#{@tag.name}' Gelöschet!"
  	redirect_to tags_path
  end
end
