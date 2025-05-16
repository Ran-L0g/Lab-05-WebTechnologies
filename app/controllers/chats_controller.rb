class ChatsController < ApplicationController
  def index
    @chat = Chat.all.order(:sender_id)
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      redirect_to @chat, notice: "Chat was successfully created."
    else
      render :new
    end
  end

  def edit
    @chat = Chat.find(params[:id])
  end

  def update
    @chat = Chat.find(params[:id])
    if @chat.update(chat_params)
      redirect_to @chat, notice: "Chat Updated"
    else
      render :edit
    end
  end  

  private

  def chat_params
    params.require(:chat).permit(:sender_id, :receiver_id)
  end
end
