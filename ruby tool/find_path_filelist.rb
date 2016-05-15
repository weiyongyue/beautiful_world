
#!/usr/bin/ruby
require  'find'

$trans

def multimedea_file_filter(path)
    if ((path =~ /.*\.rm\Z/) ||(path =~ /.*\.rmvb\Z/) \
        ||(path =~ /.*\.mp4\Z/) \
        ||(path =~ /.*\.avi\Z/) \
        ||(path =~ /.*\.mpeg\Z/))
        puts path
        $trans.puts path
    end
end

$trans = File.open("mv_list.txt","w")

Find.find("E:\\down 文件") do |filename|
  multimedea_file_filter(filename)
end

Find.find("E:\\迅雷下载") do |filename|
  multimedea_file_filter(filename)
end

puts "hello world"
$trans.close

