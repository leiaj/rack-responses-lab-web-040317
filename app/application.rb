class Application

  def call(env)
    resp = Rack::Response.new

    num1 = Time.new(2017, 12, 10, 12, 00, 00)
    num2 = Time.now

    if num1.strftime("%H:%M:%S") > num2.strftime("%H:%M:%S")
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end

end
