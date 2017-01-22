class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :repo
      t.text :json
      t.timestamps
    end
  end
end
