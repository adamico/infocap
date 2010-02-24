class AddOtherPhonesToInfos < ActiveRecord::Migration
  def self.up
    add_column :infos, :telephone, :string
    add_column :infos, :fax, :string
  end

  def self.down
    remove_column :infos, :fax
    remove_column :infos, :telephone
  end
end
