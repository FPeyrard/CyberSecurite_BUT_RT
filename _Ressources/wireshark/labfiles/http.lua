-- httpExtract

-- Writen by Sake Blok
-- SYN-bit

-- Created 2018-03-23
-- Last modified 2018-03-23


--		Create tap
tap=Listener.new("http") -- filter on "tcp" traffic only

-- 		Create field extractors
-- Frame
frame_number = Field.new("frame.number")

-- IP
ip_src = Field.new("ip.src")
ip_dst = Field.new("ip.dst")

-- TCP
tcp_stream = Field.new("tcp.stream")
tcp_srcport = Field.new("tcp.srcport")
tcp_dstport = Field.new("tcp.dstport")

-- HTTP
http_request = Field.new("http.request")
http_request_uri = Field.new("http.request.uri")
http_response = Field.new("http.response")
http_request_in = Field.new("http.request_in")
http_time = Field.new("http.time")


--		Create data structures and global variables
requests={} -- Stream will store connection related stats and symptoms

function tap.draw()
    for k,v in pairs(requests) do
        if v.time ~= nil then
            print(string.format("%s %f", v.uri, v.time))
        end
    end
end -- End of tap.draw()


function tap.packet() -- Called for every packet and extract values from current packet and store in stream structure

    if http_request() then
        -- process request
        local frame=tonumber(tostring(frame_number()))
        requests[frame] = {uri = tostring(http_request_uri()):match("^([^?]+)" ), time = nil}

    elseif http_response() then
        -- process response
        local frame=tonumber(tostring(http_request_in()))
        requests[frame].time = tonumber(tostring(http_time()))
    end
end -- end of tap.packet()
