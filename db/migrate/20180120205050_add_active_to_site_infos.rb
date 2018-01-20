class AddActiveToSiteInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :site_infos, :active, :boolean, default: false
  end
end
