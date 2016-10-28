class StudentsController < ApplicationController
	def new 
		@student=Student.new 
	end 

	def index 
		@students=Student.all 
	end 


	def create 
		# binding.pry 
		@student=Student.new(student_params) 

		if @student.save 
		redirect_to students_list_path 
	   else
		render 'new'
	end
	end 

	def edit 
		@student=Student.find_by_id(params[:id]) 
	end 

	def update 
		@student=Student.find_by_id(params[:id]) 
		@student.update_attributes(student_params) 
		redirect_to students_list_path 
	end 

	def destroy 
		@student=Student.find_by_id(params[:id]) 
		@student.destroy 
		redirect_to students_list_path 
	end 


	def show
 	@student = Student.find(params[:id])
 	end

	private 
	def student_params 
		params.require(:student).permit(:firstname,:lastname,:email,:password) 
	end
   
end
