class EntriesController < ApplicationController

  def index
    if !(params[:id]).blank? then
    @feed = Feed.find(params[:id])
    @entries = @feed.entries.order('published desc')
    else
    @entries = Entry.all.order('published desc')
    end
  end

  def show
    @entry = Entry.find(params[:id])
    @entryCategories = @entry.entry_categories
  end

  private
  def set_feed
    @feed = Feed.find(params[:id])
  end
end
