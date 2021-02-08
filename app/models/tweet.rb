class Tweet < ApplicationRecord
  #バリデーションをかけるのは、モデルにて。保存される前にここで精査する
  validates :text, presence: true
end
