class ProfilesController < ApplicationController
  def show
    @user = User.find_by_profile_name(params[:id]) #look at the DB and find me a user by profile name
    if @user
      id = @user.id
      #@statuses = @user.statuses.all
      @statuses = Status.where(user_id:id)
      render action: :show  
    else 
      render file: 'public/404', status: 404, formats: [:html]
    end
  end
end
