class AddJsCssToSiteInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :site_infos, :js_css, :text
  end
end
