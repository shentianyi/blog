class GpsController<ApplicationController
  def index

    begin
      @code=params[:code]
      @state=params[:state]


      uri1 = URI('https://api.weixin.qq.com/sns/oauth2/access_token?appid=wx41022c4af798f9f5&secret=4bf2030d2a67c34801a8c86c27849854&code='+@code+'&grant_type=authorization_code')
      res1 = Net::HTTP.get_response(uri1)

      if res1.is_a?(Net::HTTPSuccess)
        p res1.body
        result=JSON.parse(res1.body)

        puts @access_token=result['access_token']
        puts @openid=result['openid']

        uri2=URI('http://42.121.111.38:7070/api/users/bindwxopenid?userid='+@state+'&openid='+@openid)
        res2= Net::HTTP.get_response(uri2)
        p res2
        p res2.body
      end

    rescue
      render :fail
    end
  end

  def fail

  end
end