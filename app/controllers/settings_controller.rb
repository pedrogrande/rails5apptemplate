class SettingsController < ApplicationController

  # GET /settings
  # GET /settings.json
  def index
    @setting = Setting.first
  end

  # PATCH/PUT /settings/1
  # PATCH/PUT /settings/1.json
  def update
    @setting = Setting.first
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to settings_path, notice: 'Your settings were successfully updated.' }
        format.json { render :show, status: :ok, location: @setting }
      else
        format.html { render :edit }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def setting_params
      params.require(:setting).permit(:blog_title, :subtitle, :author_name, :author_image, :about_lead, :tags, :archives, :contact_email, :google_analytics, :github, :twitter, :linked_in, :instagram)
    end
end
