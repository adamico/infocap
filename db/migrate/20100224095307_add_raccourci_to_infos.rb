class AddRaccourciToInfos < ActiveRecord::Migration
  def self.up
    add_column :infos, :raccourci, :string
  end

  def self.down
    remove_column :infos, :raccourci
  end
end
