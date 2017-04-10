class ConversationsController < ApplicationController
  before_filter :authenticate_user!

  layout false, except: :index

  def index
    @profile = current_user.profile
    
    @conversations = Conversation.involving(current_user.profile).order("created_at DESC")

    # Conversation.where('sender_id=? OR recipient_id=?', @profile.id, @profile.id)
  end

  def create
    previous_conversation = Conversation.between(params[:sender_id],params[:recipient_id]).first

    if previous_conversation
      @conversation = previous_conversation
    else
      @conversation = Conversation.create(conversation_params)
    end

    render json: { conversation_id: @conversation.id }
  end

  def show
    @conversation = Conversation.find(params[:id])
    @reciever = interlocutor(@conversation)
    @messages = @conversation.messages
    @message = Message.new
  end

  private
  def conversation_params
    params.permit(:sender_id, :recipient_id)
  end

  def interlocutor(conversation)
    #changed  current_user to current_user.profile
    current_user.profile == conversation.recipient ? conversation.sender : conversation.recipient
  end
end
