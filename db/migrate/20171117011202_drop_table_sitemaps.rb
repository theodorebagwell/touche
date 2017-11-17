class DropTableSitemaps < ActiveRecord::Migration[5.1]
  def change
    drop_table :sitemaps
  end
end
