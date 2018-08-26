class CoursesController < ApplicationController 
    before_action :authenticate_user!
    def index 
    @courses = Course.all
    end
    
    def edit
        @courses = Course.find(params[:id]) 
    end

    def update
        @courses = Course.find(params[:id]) 
        @courses.update(course)
        redirect_to courses_path
         
    end

    def new 
   
    end

    def create
        
        Course.create(course)
        redirect_to courses_path
    end
    
    def show

    end

    private
   
    def course
      params.require(:course).permit(:name, :total_hours)
    end

end
