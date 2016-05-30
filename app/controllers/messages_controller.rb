class MessagesController < ApplicationController
  #estos son los mensajes internos
  before_action :authenticate_user!

  def new
    @chosen_recipient = User.find_by(id: params[:recipients].to_i) if params[:recipients]
  end

  def create
    recipients = User.where(id: params['recipients'])
    conversation = current_user.send_message(recipients, params[:message][:body], params[:message][:subject]).conversation
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(conversation)
  end
end
