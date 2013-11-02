class CreateWebshops < ActiveRecord::Migration
  def change
    create_table :webshops do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
