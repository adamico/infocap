class AddAdresseToInfos < ActiveRecord::Migration
  def self.up
    change_table :infos do |t|
      t.string :adresse, :ville
      t.integer :cp
    end
  end

  def self.down
    change_table :infos do |t|
      t.remove :adresse
      t.remove :ville
      t.remove :cp
    end
  end
end
