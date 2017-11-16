class RenameMeaningDescriptionsToMeaningImageDescriptionOnSiteInfos < ActiveRecord::Migration[5.1]
  def change
    rename_column :site_infos, :meanings_html_description, :meaning_html_description
    rename_column :site_infos, :meanings_url, :meaning_url
    rename_column :site_infos, :meaning_description, :meaning_image_description
  end
end
