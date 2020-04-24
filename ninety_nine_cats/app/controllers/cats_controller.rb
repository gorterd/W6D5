class CatsController < ApplicationController
        # GET /cats
    def index
        @cats = Cat.all

        render :index

    end

    def show
        @cat = Cat.find(params[:id])

        render :show
    end

    def new
        render :new
    end

    def create
        @cat = Cat.new(cat_params)
        
        if @cat.save
            redirect_to cat_url(@cat)
        else
            render @cat.errors.full_messages, status: 422
        end
    end

    def edit
        @cat = Cat.find(params[:id])

        render :edit
    end

    def update
        render json: params
    end

    private

    def cat_params
        params.require(:cat).permit(:birth_date, :name, :color, :sex, :description)
    end
end