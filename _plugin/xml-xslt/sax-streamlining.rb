#!/usr/bin/ruby -w
require 'rexml/document'
require 'rexml/streamlistener'
include REXML
class MyListener
    include REXML::StreamListener
    def tag_start(*args)
       puts "tag_start: #{args.map {|x| x.inspect}.join(', ')}"
    end
 
    def text(data)
       return if data =~ /^\w*$/     # whitespace only
       abbrev = data[0..40] + (data.length > 40 ? "..." : "")
       puts "  text   :   #{abbrev.inspect}"
    end
 end
 
 list = MyListener.new
 xmlfile = File.new("site.xml")
 Document.parse_stream(xmlfile, list)