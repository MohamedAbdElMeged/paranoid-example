class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  acts_as_paranoid
  def destroy_async(actor)
    self.user_id = actor.id
    save!
    destroy!
  end
end
