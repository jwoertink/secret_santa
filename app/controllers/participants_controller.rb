class ParticipantsController < ApplicationController

  def create
    @participant = Participant.new(participant_params)
    if @participant.save
      redirect_to root_path, notice: 'YAY! Good luck'
    else
      redirect_to group_path(participant_params[:group_id]), alert: "Oops. You're already signed up."
    end
  end

  private

  def participant_params
    params.require(:participant).permit(:group_id, :name, :email)
  end

end
