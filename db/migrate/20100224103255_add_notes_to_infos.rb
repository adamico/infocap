class AddNotesToInfos < ActiveRecord::Migration
  def self.up
    add_column :infos, :notes, :string
  end

  def self.down
    remove_column :infos, :notes
  end
end
