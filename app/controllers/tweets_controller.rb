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

  def destroy #削除画面には遷移するものの、そこで削除した内容をviewに渡すことをしないので、インスタンス変数ではなくただの変数として記述する
    #findメソッドでモデルから特定のid=レコードを探して変数にいれる
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  private #7つのアクションで使用され、このクラス内でのみ使うことのできるメソッド
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end
end
