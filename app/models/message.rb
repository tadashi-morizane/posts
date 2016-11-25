class Message < ActiveRecord::Base
  # タイトルは必須入力
  validates :title ,  presence: true
  # 内容は必須入力
  validates :body ,  presence: true
end

