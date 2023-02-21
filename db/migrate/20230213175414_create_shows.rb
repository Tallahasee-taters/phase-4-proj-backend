class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :date
      t.references :comedian, null: false, foreign_key: {on_delete: :cascade}
      t.references :venue, null: false, foreign_key: {on_delete: :cascade}
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
