
class String
  def lispify prefix=nil
    s=self.dup
    # remove prefix if it's there
    s=s.slice(prefix.length..-1) if prefix and s[0...prefix.length]==prefix

    # prefix underscore->alpha or uppercase->lowercase with dash
    s.gsub!(/(_+[a-zA-Z]|[A-Z])(?=[a-z])/) do |m|
      '-'+m.downcase[-1,1]
    end
    # split off any numerical groups
    s.gsub!(/\d+/,"-\\0")
    # split off any two or more-letter acronyms at the end (eg. EXT NV ARB ATI SGIX etc)
    s.sub!(/[A-Z]{2,}$/,"-\\0")
    # group together any bouts of -s and _s into a single dash
    s.gsub!(/[-_]+/,"-")
    s.downcase!
    if s[0,1]=='-'
      s[1..-1]
    else
      s
    end
  end
end

class Array
  GL_SUFFIXES=Regexp.new('('+["IBM","3DFX","SGIS","SUNX","HP","GREMEDY","APPLE","MESA","SUN","INTEL","NV","ARB","SGIX","EXT","ATI"].join('|')+')$')

  def lispify
    stems={}
    split=
    collect do |e|
      [e,*e.sub(GL_SUFFIXES,'-\\1').split('-')]
    end.collect do |orig,e,vendor_suffix|
      #puts("Expanding e #{e.inspect} to #{e.sub(/([0-9])?(u?(i|s|b)|h|f|d)v?$/,'-\\0')}")
      stem,arg_suffix=e.sub(/([0-9])?(u?(i|s|b)|h|f|d)v?$/,'-\\0').split('-')
      stems[stem]||={}
      if arg_suffix && arg_suffix!=''
        stems[stem][arg_suffix]||=0
        stems[stem][arg_suffix]+=1
      end
      #pp [orig,stem,arg_suffix||'',vendor_suffix]
      [orig,stem,arg_suffix||'',vendor_suffix]
    end
    # re-join endings that do not share a stem with another function name
    split.collect do |orig,e,arg_suffix,vendor_suffix|
      # also keep those ending in 'v', as these are never (probably) going to be at the end of words
      # also keep 'i' as these are all integer suffices
      # other special-case words
      shared_stem=((stems[e].keys.length > 1) or arg_suffix.match(/v$/) or arg_suffix=='i' \
                   or e.match(/Bounds$/) or e.match(/Depth$/))
      # special case, things ending in edv (ie. participle-v), reattach 'd' and remove from arg_suffix
      if (e.match(/e$/) and arg_suffix.match(/^d.*v$/))
        e+='d'
        arg_suffix=arg_suffix[1..-1]
        puts "Fixing participle-v case: #{orig.inspect}, #{e.inspect} suffix: #{arg_suffix.inspect}"
      end
      e_split=(shared_stem ? e : e+arg_suffix).gsub(/([a-z])([A-Z0-9])/,'\\1-\\2').split('-')
      if arg_suffix!='' and not shared_stem
        puts "Re-attaching arg_suffix for #{orig.inspect}, #{e.inspect}+#{arg_suffix.inspect}"
      end
      [orig,*e_split].concat([shared_stem ? arg_suffix : '',vendor_suffix])
    end
  end
end
