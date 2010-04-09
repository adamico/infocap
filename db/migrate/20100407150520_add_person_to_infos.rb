class AddPersonToInfos < ActiveRecord::Migration
  def self.up
    add_column :infos, :person, :string
  end

  def self.down
    remove_column :infos, :person
  end
end
