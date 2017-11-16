class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_site_info

  private
  def get_site_info
    @site_info = SiteInfo.find_by(url: request.host) || SiteInfo.find_by(url: 'localhost')
  end
end
