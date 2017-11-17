class SitemapsController < ApplicationController
  before_action :set_sitemap, only: [:show]

  def index
    @number_of_pages = 249
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
      @sitemaps = File.readlines("#{Rails.root}/lib/assets/sitemaps/#{params[:id]}")
    end
end
