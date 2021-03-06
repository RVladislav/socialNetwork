class Api::UserProfileController < ApplicationController
  respond_to :json

  def index

    if (params[:skills])
      skills = params[:skills]
      skillsT = skills.map{|s| "%#{s}%"}
      Rails::logger::debug skillsT

      q = UserProfile.arel_table
      qanchor = 'skills LIKE ?'
      (skills.count - 1).times do
        qanchor += ' or skills LIKE ?'
      end

      conditions = skillsT.clone
      conditions.insert(0, qanchor)
      respond_with UserProfile.find(:all, :conditions => conditions)
    else
      respond_with UserProfile.all
    end
  end

  def show
    @client = UserProfile.find_by_user_id(params[:id])
    respond_with @client
  end
end
