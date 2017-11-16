require 'rmagick'
require 'rvg/rvg'

class PagesController < ApplicationController
  def home;end

  def image
    @slug = params[:slug].upcase
    format = 'png'
    width, height = 2000,500
    color = '#343a40'
    text_color = 'white'

    rvg = Magick::RVG.new(width, height).viewbox(0, 0, width, height) do |canvas|
      canvas.background_fill = color
    end

    img = rvg.draw
    img.format = format

    drawable = Magick::Draw.new
    drawable.pointsize = 100
    drawable.font = "#{Rails.root}/lib/assets/LiberationMono-Bold.ttf"
    drawable.fill = text_color
    drawable.gravity = Magick::CenterGravity
    drawable.annotate(img, 0, 0, 0, 0, @site_info.meaning_image_description % {slug: @slug})

    send_data img.to_blob, type: "image/#{format}", disposition: 'inline'
  end

  def meaning
    @slug = params[:slug].upcase
    @lp_num = (@slug.hash % 10).to_s
    @slug_link = "<a href='#{@site_info.meaning_url % {slug: @slug}}'>#{@slug}</a>"
    @site_contents = @site_info.site_contents
    @lp_content = @site_contents.find_by(title: @lp_num)
  end
end
