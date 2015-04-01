# Description
#   A hubot script that report weather
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Wei Zhu[@<org>]

module.exports = (robot) ->
  robot.respond /(.+?)天气/, (msg) ->
    city = msg.match[1]
    robot.http("http://api.map.baidu.com/telematics/v3/weather?location=#{encodeURI(city)}&output=json&ak=#{process.env.BAIDU_AK}")
      .get() (err, res, body) ->
        data = JSON.parse(body)
        if data.results
          result = data.results[0]
          response = ""
          response += "#{result.currentCity}天气：\n"
          response += "PM2.5 #{result.pm25}\n"
          result.weather_data.forEach (weather) ->
            response += "#{weather.date} #{weather.weather} #{weather.wind} #{weather.temperature}\n"
          msg.reply response
        else
          msg.reply "#{city}是什么鬼地方？"

