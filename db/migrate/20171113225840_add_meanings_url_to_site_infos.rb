class AddMeaningsUrlToSiteInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :site_infos, :meanings_url, :string
  end
end
