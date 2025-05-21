class LanguagesController < ApplicationController
    def index
        @language = Language.all
        render json: @language
    end
    def new
        @language = Language.new
        render json: @language
    end
    def show
        @language = Language.find(params[:id])
        render json: @language
    rescue ActiveRecord::RecordNotFound
        render json: { error: 'Language not found' }, status: :not_found
    end
    def destroy
        begin
            @language = Language.find(params[:id])
            @language.destroy
            render json: { message: 'Language deleted successfully' }, status: :ok
        rescue ActiveRecord::RecordNotFound
            render json: { error: 'Language not found' }, status: :not_found
        end
    end
    def create
        @language = Language.new(language_params)
        if @language.save
            render json: @language, status: :created
        else
            render json: @language.errors, status: :unprocessable_entity
        end
    end
    private
    def language_params
        params.require(:language).permit(:language, :status)
    end
end
