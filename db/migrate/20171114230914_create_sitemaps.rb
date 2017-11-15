class CreateSitemaps < ActiveRecord::Migration[5.1]
  def change
    create_table :sitemaps do |t|
      t.string :slug

      t.timestamps
    end
  end
end
