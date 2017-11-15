class SitemapsController < ApplicationController
  before_action :set_sitemap, only: [:show]

  def index
    @sitemaps_count = Sitemap.count
    @number_of_pages = (@sitemaps_count/50000.0).ceil
    respond_to do |format|
      format.xml {}
    end
  end

  def show
    respond_to do |format|
      format.xml {}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sitemap
      @sitemaps = Sitemap.limit(50000).offset((params[:id].to_i - 1).abs)
    end
end
