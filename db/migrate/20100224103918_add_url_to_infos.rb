class AddUrlToInfos < ActiveRecord::Migration
  def self.up
    add_column :infos, :url, :string
  end

  def self.down
    remove_column :infos, :url
  end
end
