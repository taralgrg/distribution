class CreateAnnoyings < ActiveRecord::Migration[5.0]
  def change
    create_table(:annoyings) do |t|
      t.column(:brand_id, :int)
      t.column(:store_id, :int)

      t.timestamps()
    end
  end
end
