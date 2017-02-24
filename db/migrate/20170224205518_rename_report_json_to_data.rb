class RenameReportJsonToData < ActiveRecord::Migration[5.0]
  def change
    rename_column :reports, :json, :data
  end
end