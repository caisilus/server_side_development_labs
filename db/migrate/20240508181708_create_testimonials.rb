class CreateTestimonials < ActiveRecord::Migration[7.1]
  def change
    create_table :testimonials do |t|
      t.string :name, null: false
      t.string :image_url
      t.string :ocupation
      t.string :title, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
