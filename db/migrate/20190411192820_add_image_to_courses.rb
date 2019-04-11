class AddImageToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :picture, :stringrails
    add_column :courses, :g, :string
    add_column :courses, :migration, :string
    add_column :courses, :add_image_to_courses, :string
    add_column :courses, :picture, :string
  end
end
