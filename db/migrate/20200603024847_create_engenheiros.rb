class CreateEngenheiros < ActiveRecord::Migration[5.0]
  def change
    create_table :engenheiros do |t|
      t.string :nome
      t.string :crea
      t.string :telefone

      t.timestamps
    end
  end
end
