class CoursesController < ApplicationController 
    before_action :authenticate_user!
    def index 
    @courses = Course.all
    end
    
    def edit
        @curent_course = Course.find(params[:id]) 
    end

    def update
        @curent_course = Course.find(params[:id]) 
        @curent_course.update(course)
        redirect_to courses_path
         
    end

    def new 
   
    end

    def create
        
        Course.create(course)
        redirect_to courses_path
    end
    def destroy
        
        @course = Course.find(params[:id])
       find_course.destroy
   end

    private
   
    def course
      params.require(:course).permit(:name, :total_hours)
    end
    def find_course
        @course = Course.find(params[:id])
    end

end
