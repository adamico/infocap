class AddAbbrevToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :abbrev, :string
  end

  def self.down
    remove_column :categories, :abbrev
  end
end
