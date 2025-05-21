class TemplateController < ApplicationController 
  
  def index
    @template = Template.all
    render json: @template
  end

  def new
    @template = Template.new
    render json: @template
  end

  def show
    @template = Template.find(params[:id])
    render json: @template
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Template not found' }, status: :not_found
  end

  def destroy
    begin
      @template = Template.find(params[:id])
      @tample.destroy
      render json: { message: 'Template deleted successfully' }, status: :ok
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Template not found' }, status: :not_found
    end
  end

  def create
    @template = Template.new(template_params)
    if @template.save
      UserMailer.with(user: @user).welcome_email.deliver_now
      render json: @template, status: :created
    else
      render json: @template.errors, status: :unprocessable_entity
    end
  end
  private
  def template_params
    params.require(:template).permit(:language, :message, :usecase)
  end
end
