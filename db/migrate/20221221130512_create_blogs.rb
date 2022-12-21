class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :description
      t.string :title
      t.string :publish_date

      t.timestamps
    end
  end
end
