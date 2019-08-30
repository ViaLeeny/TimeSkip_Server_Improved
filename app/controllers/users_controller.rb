class UsersController < ApplicationController
  
def index
    users = User.all
    render json: users, include: [:contributions]
end
  
def show 
    user = User.find_by(id: params[:id])
    if user
        render json:user
    else 
        render json: {error: 'User not found.'}, status: 404
    end 
end 

def signin
    
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
        render json: {name: user.name, token: issue_token({ id: user.id })}
    else 
        render json: { error: 'Invalid username/password combination.' }, status: 401
    end
end

def new
    user = User.new
end  

  def signup
    user = User.create user_params
    if user.valid?
      user.save
      render json: user
    #   session[:user_id] = user.id
    #   redirect_to user_path(user)
    else
    #   flash[:errors] = user.errors.full_messages
    #   redirect_to new_user_path
    puts "OH NO IT DIDNT WORK"
    render json: {error: 'something bad happened'}
    end
  end

  def validate 
    user = current_user
    if user 
      render json: {name: user.name, token: issue_token({ id: user.id })}
    else 
      render json: {error: 'User not found.'}, status: 404
    end 
  end 

  def contributions
    user = current_user
    if user 
      render json: user.contributions
    else
      render json: {error: 'Invalid token'}
    end 
  end 



	private
	def user_params
		params.permit(:name, :password)
	end


end
