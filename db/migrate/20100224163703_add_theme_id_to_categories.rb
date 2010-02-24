class AddThemeIdToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :theme_id, :integer
  end

  def self.down
    remove_column :categories, :theme_id
  end
end
