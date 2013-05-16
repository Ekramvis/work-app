class AddAttachmentForProfile < ActiveRecord::Migration
  def up
    change_table :employee_profiles do |t|
      t.attachment :picture
    end
  end

  def down
    drop_attached_file :employee_profiles, :picture
  end
end
