class AddSubjectToCourses < ActiveRecord::Migration[6.0]
  def change
    add_reference :courses, :subject, null: false, foreign_key: true
  end
end
