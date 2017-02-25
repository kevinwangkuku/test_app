class Order < ApplicationRecord

  # 在 rails 的層面做資料驗證
  # 一筆訂單的訂購者應該要填名字，不然不給建立一筆訂單
  validates :name, presence: true
  # 訂購者的名字不應該只有一個字元
  validates :name, length: { minimum: 2 }
  validates :name, length: { maximum: 10 }
  # 訂購者的 email 是必填，不然無法聯絡
  validates :email, presence: true

  has_many :comments
  has_many :votes, as: :voteable


    def up_votes
    self.votes.where(vote: true).length
    end

    def down_votes
    self.votes.where(vote: false).length
    end

    def total_votes
    up_votes - down_votes
    end

        




end