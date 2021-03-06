class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :messages

  validates :name, presence: true, uniqueness: true

  def show_last_messages
    if (last_message = message.last).present?
      last_message.content? ? last_message.content : "画像が投稿されています"
    else
      "まだメッセージはありません"
    end
  end
end
