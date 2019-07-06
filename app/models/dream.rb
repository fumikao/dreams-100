class Dream < ApplicationRecord
  belongs_to :user

  validates :content, presence: :true

  include RankedModel
  ranks :row_order, with_same: :user_id

  enum status: {
    "未実施": "0",
    "実施中": "1",
    "達成！": "2"
  }

  enum opened: {
    "公開": "1",
    "非公開": "0"
  }
end