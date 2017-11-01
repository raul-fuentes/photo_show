class Album < ApplicationRecord

  belongs_to :user
  scope      :is_public, ->      { where(public: true) }
  scope      :by_user,   ->(id)  { where(user_id: id) }

  mount_uploaders :photos, PhotoUploader
  serialize :photos, JSON

end