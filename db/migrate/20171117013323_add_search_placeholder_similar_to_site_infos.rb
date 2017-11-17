class AddSearchPlaceholderSimilarToSiteInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :site_infos, :search_placeholder, :string
    add_column :site_infos, :similar_heading, :text
    add_column :site_infos, :similar_body, :text
  end
end
