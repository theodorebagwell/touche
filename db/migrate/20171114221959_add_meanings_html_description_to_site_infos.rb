class AddMeaningsHtmlDescriptionToSiteInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :site_infos, :meanings_html_description, :string
  end
end
