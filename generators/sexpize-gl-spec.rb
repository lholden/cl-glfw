#!/usr/bin/env ruby

require 'generators/string-lispify'
require 'pp'

BASE=File::dirname($0)+'/..'

function_names=[]
open("#{BASE}/src/gl.spec","r") do |i|
  for l in i
    case l
    when /^(\w+)\((.*)\)$/ 
      function_names << $1
    end
  end
end
function_name_map=function_names.lispify.inject(Hash.new) do |h,cl|
  #puts "processing #{cl.inspect}"
  lisp_name=cl[1..-1].join('-').gsub(/-+/,'-').sub(/-$/,'').downcase
  #puts "injecting #{cl[0].inspect} as #{lisp_name.inspect}"
  h[cl[0]]=lisp_name
  h
end

open("#{BASE}/src/gl.spec.lisp","w") do |o|
  o.puts "("
  open("#{BASE}/src/gl.spec","r") do |i|
    o.puts(";;;; File: gl.spec")
    o.puts ":functions (("
    for l in i
      case l
        when /^\s*(#+)(.*)/ then o.puts((';'*$1.length)+$2)
        when /^[a-z-]*:/ then next
        when /^(\w+)\((.*)\)$/ 
          o.puts %{) (("#{$1}" #{function_name_map[$1]}) :args (#{$2.split(',').collect{|s|'|'+s.strip+'|'}.join(' ')})}
        when /^\tparam\s+(\w+)\s+(\w+)\s+(in|out)\s+(array|value)\s*(.*)\s*$/i
          o.write(%{:param (:name |#{$1}| :type |#{$2}| :direction :#{$3}})
	  if $4=='array'
	    o.write(%{ :array t})
	    if rest=$5.match(/\[(\S*)\](\s+retained)?/)
	      if rest[1]!=''
	        if size=rest[1].match(/COMPSIZE\(([^)]*)\)/)
		  computes=size[1].split(/\W+/)
		  if computes.length>0
		    o.write(%{ :size (#{computes.collect{|c|"|#{c}|"}.join(' ')})})
		  end
		else
	          o.write(%{ :size #{rest[1]}})
		end
	      end
	      o.write(%{ :retained t}) if rest[2] and rest[2]!=''
	    end
	  end
	  o.puts(%{)})
        when /^\t([a-z0-9-]*)\s*(.*?)(#|$)/
          o.puts(":"+$1+" ("+$2.split(/\s+/).compact.collect{|s|'"'+s+'"'}.join(' ')+")")
        when /^$/ then o.puts
        else o.puts(";?"+l)
      end
    end
    o.puts "))"
  end
  open(BASE+"/src/gl.tm","r") do |i|
    o.puts(";;;; File: gl.tm")
    o.puts ":type-map ("
    for l in i
      case l
        when /^\s*(#+)(.*)/ then o.puts((';'*$1.length)+$2)
        when /^(.*,){5}.*$/
          ts=l.strip.split(',')
          o.puts("|"+ts[0]+"| |"+ts[3].strip+"|")
        when /^$/ then o.puts
        else o.puts ";? #{l}"
      end
    end
    o.puts ")"
  end
  o.puts ":enum-spec ("
  for spec in ["enum.spec","enumext.spec"]
    open(BASE+'/src/'+spec) do |i|
      o.puts(";;;; File: #{spec}")
      for l in i
        case l
          when /^Extensions define:$/
            o.puts(':extensions (')
          when /^(\w*) enum:$/
            o.puts(') |'+$1.gsub(/\s+/,'-')+'| (')
          when /^(?:\t| {4,})(\w+)\s*=\s*0x([a-fA-F0-9]+)/
            o.puts(%{|#{$1}| #x#{$2}})
          when /^(?:\t| {4,})(\w+)\s*=\s*GL_(\w+)(?:\s+#.*)?/
            o.puts(%{|#{$1}| |#{$2}|})
          when /^(?:\t| {4,})(\w+)\s*=\s*(\d+)(?:\s+#.*)?/
            o.puts(%{|#{$1}| #{$2}})
          when /^(?:\t| {4,})(\w+)\s*=\s*(.+)(?:\s+#.*)/
            o.puts(%{|#{$1}| #{$2}})
          when /^(?:\t| {4,})use\s+(\w+)\s+(\w+)/   
            o.puts(%{|#{$2}| (:use |#{$1}|)})
#          when /^(\w+)(,\*)*,\s+(\w+)(,\*)*/
#            o.puts(%{("#{$1}" "#{$3}")})
          when /^\s*(#+)(.*)/ then o.puts((';'*$1.length)+$2)
          when /^$/ then o.puts
          else o.puts ";;? #{l}"
        end
      end
    end
  end
  o.puts "))"
  o.puts ")"
end
