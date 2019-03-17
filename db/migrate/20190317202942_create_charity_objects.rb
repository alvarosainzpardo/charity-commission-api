class CreateCharityObjects < ActiveRecord::Migration[5.1]
  def change
    create_table :charity_objects do |t|
      t.string "regno", limit: 14, default: "0", null: false
      t.integer "subno", default: 0, null: false
      t.string "seqno", limit: 4, default: "", null: false
      t.text "object"

      t.timestamps
    end
  end
end
