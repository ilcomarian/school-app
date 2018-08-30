class InstructorsController < ApplicationController
    before_action :authenticate_user!
    def index 
        @instructor = Instructor.all
    end
    
    def edit
        @curent_instructor= Instructor.find(params[:id])
    end
    
    
    def update
        @curent_instructor= Instructor.find(params[:id])
        @curent_instructor.update(instructor_params)
        redirect_to instructors_path 
    end


    def new 
        
    end

    def create

        Instructor.create(instructor_params)
        redirect_to instructors_path
        
    end

    def destroy
        @instructor = Instructor.find(params[:id])
       # @cohort.destroy

       find_instructor.destroy
   end

    private
   
    def instructor_params
      params.require(:instructor).permit(:first_name, :last_name, :age, :salary, :completed_education, :cohort_id)
    end

    def find_instructor
        @instructor = Instructor.find(params[:id])
    end

end
