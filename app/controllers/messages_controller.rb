class MessagesController < ApplicationController

  def new
    @message = Message.new
    @user = current_user
  end

  def create
  	@user = current_user
    @message = Message.new(message_params)
    
    if @message.valid?
      MessageMailer.new_message(@message).deliver
      redirect_to contact_path, notice: "Su mensaje fue enviado."
    else
      flash[:alert] = "Ocurrió un error."
      render :new
    end
  end

private

  def message_params
    params.require(:message).permit(:rut, :content)
  end

end