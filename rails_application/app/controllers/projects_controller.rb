class ProjectsController < ApplicationController
    def index
  	@projects=Project.all
    end
  	
    def new
    @project=Project.new
    end

    def create 
	# binding.pry 
	@project=Project.new(project_params) 
    @project.save 
	redirect_to projects_list_path 
	
    end 

	def edit 
		@project=Project.find_by_id(params[:id]) 
	end 


	def update 
		@project=Project.find_by_id(params[:id]) 
		@project.update_attributes(project_params) 
		redirect_to projects_list_path 
	end 

	def destroy 
		@project=Project.find_by_id(params[:id]) 
		@project.destroy 
		redirect_to projects_list_path 
	end 


	def show
 	@project = Project.find(params[:id])
 	end

	private 
	def project_params 
		params.require(:project).permit(:name,:duration,:teamsize,:cost,:domain) 
	end