class AddMeaningsHtmlDescriptionToSiteInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :site_infos, :meaning_html_description, :string
  end
end
