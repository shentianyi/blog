class GpsController<ApplicationController
  def index

    @code=params[:code]
    @state=params[:state]


    uri = URI('https://api.weixin.qq.com/sns/oauth2/access_token?appid=wx41022c4af798f9f5&secret=4bf2030d2a67c34801a8c86c27849854&code='+@code+'&grant_type=authorization_code ')
    res = Net::HTTP.get_response(uri)

    if res.is_a?(Net::HTTPSuccess)
      p res.body
      result=JSON.parse(res.body)

      puts @access_token=result['access_token']
      puts @openid=result['openid']

    end


    render json:{
               code: @code,
               state:@state,
               access_token:@access_token,
               openid:@openid
           }
  end
end