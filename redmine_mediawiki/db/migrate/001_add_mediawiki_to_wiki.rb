class AddMediawikiToWiki < ActiveRecord::Migration
  def self.up
    add_column :wikis, :external_wiki_link, :string
    add_column :wikis, :redirect_wiki, :boolean
  end

  def self.down
    remove_column :wikis, :external_wiki_link
    remove_column :wikis, :redirect_wiki
  end
end
