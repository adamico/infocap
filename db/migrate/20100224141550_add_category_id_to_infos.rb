class AddCategoryIdToInfos < ActiveRecord::Migration
  def self.up
    add_column :infos, :category_id, :integer
  end

  def self.down
    remove_column :infos, :category_id
  end
end
