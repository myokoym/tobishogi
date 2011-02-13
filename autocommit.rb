#! /usr/local/bin/ruby
SUBJECT = "tobishogi"
unless (ARGV.size == 2)
  puts "Usage: ruby autocommit.rb iteration step"
  exit
end
@time = Time.now
def update?(files)
  files.each do |f|
    now = File.mtime(f)
    if now > @time
      @time = now
      return true
    end
  end
  return false
end
files = ["#{SUBJECT}.rb", "spec/#{SUBJECT}_spec.rb"]
iteration = ARGV[0]
step = ARGV[1].to_i
1200.times do
  if update?(files)
    %x[git add #{files.join(" ")} &]
    %x[git commit -m "#{iteration}-#{sprintf("%02d", step)}" &]
    step += 1
  end
  sleep 30
end

