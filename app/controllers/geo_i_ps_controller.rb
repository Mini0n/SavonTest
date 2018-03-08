class GeoIPsController < ApplicationController
  before_action :set_geo_ip, only: [:show, :edit, :update, :destroy]

  # GET /geo_ips
  # GET /geo_ips.json
  def index
    # @geo_ips = GeoIp.all
    @geoIP_Obj = GeoIp.new
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geo_ip
      @geo_ip = GeoIp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geo_ip_params
      params.fetch(:geo_ip, {})
    end
end
