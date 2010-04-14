class AddStateToInfo < ActiveRecord::Migration
  def self.up
    add_column :infos, :state, :string
  end

  def self.down
    remove_column :infos, :state
  end
end
