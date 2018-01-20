class ChangeColumnTypeOfMeaningHtmlDescription < ActiveRecord::Migration[5.1]
  def change
    change_column :site_infos, :meaning_html_description, :text
  end
end
