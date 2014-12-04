class ParticipantsController < ApplicationController

  def create
    @participant = Participant.new(participant_params)
    if @participant.save
      redirect_to root_path, notice: 'YAY! Good luck'
    else
      #do something
    end
  end

  private

  def participant_params
    params.require(:participant).permit(:group_id, :name)
  end

end
