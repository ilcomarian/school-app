class CohortsController < ApplicationController
    before_action :authenticate_user! 
    def index 

        @cohorts = Cohort.all

    end
    
    def edit
        @curent_cohort = Cohort.find(params[:id])
    end

    def update

        @curent_cohort = Cohort.find(params[:id])
        @curent_cohort.update(cohort_params)
        redirect_to cohorts_path
        
    end

    def new 

        @new_cohort = Cohort.new

    end

    def create

        Cohort.create(cohort_params)
        redirect_to cohorts_path
        
    end
    
    def destroy
         @cohort = Cohort.find(params[:id])
        # @cohort.destroy

        find_cohort.destroy
    end

    private
   
    def cohort_params
      params.require(:cohort).permit(:name, :start_date, :end_date, :instructor_id, :course_id)
    end

    def find_cohort
        @cohort = Cohort.find(params[:id])
    end

end



