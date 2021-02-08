class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    #newで作ったものを保存する
    Tweet.create(tweet_params)
  end

  private #7つのアクションで使用され、このクラス内でのみ使うことのできるメソッド
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end
end
