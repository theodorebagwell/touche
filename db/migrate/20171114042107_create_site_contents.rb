class CreateSiteContents < ActiveRecord::Migration[5.1]
  def change
    create_table :site_contents do |t|
      t.belongs_to :site_info, foreign_key: true
      t.text :body
      t.string :title

      t.timestamps
    end
  end
end
