class MessagesController < ApplicationController
  def index
    @message = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end
end
