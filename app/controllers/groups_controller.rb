class GroupsController < ApplicationController

  def index
    redirect_to group_path(params[:id])
  end

  def show
    @participant = Participant.new(group_id: params[:id])
    @playing = Participant.by_group(params[:id])
  end

end
