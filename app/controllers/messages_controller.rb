class MessagesController < ApplicationController
  def index
    @message = Message.new
    #Messageをすべて取得する。
    @messages = Message.all
  end


  def create
    @message = Message.new(message_params)
=begin
    @message.save
      redirect_to root_path , notice: 'メッセージを保存しました。'
=end
    if @message.save
      redirect_to root_path , notice: 'メッセージを保存しました。'
    else
      #メッセージが保存できなかったとき
      @messages = Message.all
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'index'
    end
  end

  private
  def message_params
    params.require(:message).permit(:name, :body)
  end
  ##ここまで
  
=begin
  paramsのフォーマットは以下のとおり
  { :message => {
      :name => "名前の入力内容",
      :body => "内容の入力内容"
      }
  }
=end
end
