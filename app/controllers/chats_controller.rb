class ChatsController < ApplicationController
  def index
    @chat = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
  end
end
