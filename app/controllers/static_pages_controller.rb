class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def about

  end

  def toi
  end

  def groupe
  end

  def new
    @user = User.new
    # User.save
  end


   def create
     @u = User.create(Username: params['Username'], Bio: params['Bio'])
   
    # u.Username = params[:Username]
    # u.Bio = params[:Bio]
   if @u.save
      redirect_to action: 'show', Username: @u.Username
    else
      redirect_to action: 'error'
    end

    #redirect_to '/'
   end
   def show
    #@user = User.find(params[:id])
    @user = User.find_by(Username: params[:Username])
   end
   def error
   end
    
end
