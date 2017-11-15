class PagesController < ApplicationController
  def home;end

  def meaning
    @slug = params[:slug].upcase
    @lp_num = (@slug.hash % 10).to_s
    @slug_link = "<a href='#{@site_info.meanings_url % {slug: @slug}}'>#{@slug}</a>"
    @site_contents = @site_info.site_contents
    @lp_content = @site_contents.find_by(title: @lp_num)
  end
end
