class CohortsController < ApplicationController
   
    def index 

        @cohorts = Cohort.all

    end
    
    def edit
        @cohorts = Cohort.find(params[:id])
    end

    def update

        @cohorts = Cohort.find(params[:id])
        @cohorts.update(cohort_params)
        redirect_to cohorts_path
        
    end

    def new 

        @new_cohort = Cohort.new

    end

    def create

        Cohort.create(cohort_params)
        redirect_to cohorts_path
        
    end
    
    # def show

    # end

    private
   
    def cohort_params
      params.require(:cohort).permit(:name, :start_date, :end_date, :instructor_id, :course_id)
    end

    def find_cohort
        @cohort = Cohort.find(params[:id])
    end

end



