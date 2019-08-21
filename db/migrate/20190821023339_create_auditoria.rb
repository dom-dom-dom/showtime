class CreateAuditoria < ActiveRecord::Migration[5.2]
  def change
    create_table :auditoria do |t|
      t.string :name
      t.string :capacity

      t.timestamps
    end
  end
end
