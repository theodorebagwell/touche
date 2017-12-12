class AddSideInfoToSiteInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :site_infos, :side_info, :text
  end
end
