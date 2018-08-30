class StudentsController < ApplicationController 
   
    before_action :authenticate_user!
   

    def index 
    @students = Student.all
    end
    
  
    def new 

    end

    def create

        Student.create(student_params)
        redirect_to students_path
        
    end
    
    def edit

        @curent_student = Student.find(params[:id])
        
    end

    def update
        @curent_student = Student.find(params[:id])
        @curent_student.update(student_params)
        respond_to do |format|
            format.html { redirect_to students_path }
            format.json  { render :json => {success: true} } # don't do msg.to_json
        end
    end

    def destroy
        Student.find(params[:id]).destroy
        redirect_to students_path
    end


    # def show
    #     redirect_to students_path
    # end

    # def update
    #     @student = Student.find(params[:id])
    #     @student.update(student_params)
    #   end
     

    private
   
    def student_params
      params.require(:student).permit(:first_name, :last_name, :age, :cohort_id)
    end

    def find_student
        @student = Student.find(params[:id])
    end

end


