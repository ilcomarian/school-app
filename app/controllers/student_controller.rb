class StudentController < ApplicationController 
    def index 
    @students = Student.all
    end
    
    def edit

    end

    def new 
    @new_student = Student.new
    end

    def show

    end

end

def destroy
    @curent_student.destroy
    
  end
private

@curent_student = Student.finde(params[:id])