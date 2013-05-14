class UrlsController < ApplicationController

  def index
    @list_short_urls = Url.order("click_count DESC")
    @url = Url.new
  end

  def create
    @url = Url.create(params[:url])
    redirect_to @url
  end

  def show
    @url = Url.find(params[:id])
  end

  def super_short
    @url = Url.find_by_short(params[:short])
    @url.click_count += 1
    @url.save
    redirect_to @url.long
  end

end
