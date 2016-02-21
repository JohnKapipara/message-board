class MessagesController < ApplicationController
  before_action :set_message, only: [:edit, :update, :destroy]

  def index
    @message = Message.new
    #Messageをすべて取得する。
    @messages = Message.all
  end

  def edit
  end

  def destroy
    @message.destroy
    redirect_to root_path, notice: 'メッセージを削除しました'
  end

  def update
    if @message.update(message_params)
      #保存に成功した場合はトップページへリダイレクト
      redirect_to root_path , notice: 'メッセージを編集しました。'
    else
      #保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end


  def create
    #binding.pry
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
    params.require(:message).permit(:name, :age, :body)
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

  def set_message
    @message = Message.find(params[:id])
  end

end

