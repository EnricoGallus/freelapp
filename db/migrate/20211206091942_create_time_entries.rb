class CreateTimeEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :time_entries do |t|
      t.string :name
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.time :from
      t.time :to
      t.date :date

      t.timestamps
    end
  end
end
