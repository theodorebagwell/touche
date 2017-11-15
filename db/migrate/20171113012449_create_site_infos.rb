class CreateSiteInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :site_infos do |t|
      t.string :url
      t.string :name
      t.text :meta_tags
      t.text :site_description
      t.text :meaning_description
      t.text :meaning_intro
      t.text :meaning_body
      t.text :letter_intro
      t.text :meaning_outro
      t.text :meaning_footer

      t.timestamps
    end
  end
end
