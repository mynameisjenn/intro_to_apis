require 'unirest'

system = "clear"


response = Unirest.get("https://www.reddit.com/r/programming/.json")


title = response.body["data"]["children"][i]["data"]["title"]

title.each_with_index do ||
end


p "Title: #{title}" 

# link = Unirest.get("https://www.reddit.com/r/programming/.json/r/programming/comments/8gspd6/visual_studio_code_april_2018_123_released/")

# p link

# # p response.body["data"]["children"][0]["data"]["author"]
# # # p response.body["data"]["children"][0]["data"]["permalink"]

# system "open 'https://www.reddit.com/r/programming'"
