class GroupsController < ApplicationController

  def index
    redirect_to group_path(params[:id])
  end

  def show
    @participant = Participant.new(group_id: params[:id])
    @pre_game = Time.parse("#{Time.now.year}-12-10").to_i > Time.now.to_i
  end

end
