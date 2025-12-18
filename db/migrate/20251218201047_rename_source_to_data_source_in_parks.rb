class RenameSourceToDataSourceInParks < ActiveRecord::Migration[8.0]
  def change
    rename_column :parks, :source, :data_source
  end
end
