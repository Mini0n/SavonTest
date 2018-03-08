class GeoIp < ApplicationRecord

  def initialize
    client = Savon::Client.new(wsdl: 'http://www.webservicex.net/geoipservice.asmx?WSDL')
    respon = client.call(:get_geo_ip_context)
    hashed = respon.to_hash[:get_geo_ip_context_response][:get_geo_ip_context_result]

    @code = hashed[:return_code]
    @ip = hashed[:ip]
    @country = hashed[:country_name]
    @country_code = hashed[:country_code]
  end

  def ip
    return @ip.to_s
  end

  def code
    return @code.to_s
  end

  def country
    return @country.to_s
  end

  def country_code
    return @country_code.to_s
  end

end


