class AddAttachmentPhotoToReviewbeers < ActiveRecord::Migration
  def self.up
    change_table :reviewbeers do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :reviewbeers, :photo
  end
end
