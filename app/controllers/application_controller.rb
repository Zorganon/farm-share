class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  

  private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_share
      @share = Share.find(params[:id])
    end
            # Never trust parameters from the scary internet, only allow the white list through.
    def share_params
      params.require(:share).permit(:animal, :size, :price, :fee, :quantity, :delivery)
    end
  

  
end
