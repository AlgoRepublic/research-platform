class Trade < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end
