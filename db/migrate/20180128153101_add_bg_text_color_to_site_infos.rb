class AddBgTextColorToSiteInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :site_infos, :image_bg_color, :string
    add_column :site_infos, :image_text_color, :string
  end
end
