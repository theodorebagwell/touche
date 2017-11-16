class AddMeaningsUrlToSiteInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :site_infos, :meaning_url, :string
  end
end
