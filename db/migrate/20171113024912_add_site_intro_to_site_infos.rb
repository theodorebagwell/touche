class AddSiteIntroToSiteInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :site_infos, :site_intro, :text
  end
end
