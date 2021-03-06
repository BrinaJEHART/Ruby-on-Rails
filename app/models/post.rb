class Post < ApplicationRecord

    belongs_to :user
    mount_uploader :attachment, ImgUploadUploader
    acts_as_commontable dependent: :destroy
    acts_as_votable
end
