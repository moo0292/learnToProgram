Dir.chdir 'C:/Users/Kittitat/Desktop/Kanye West - Yeezus (2013) [320K]'

music_names = Dir['*.{MP3, mp3}']
music_names.shuffle!
filename = 'test_playlist.m3u'

puts music_names
File.open 'test_playlist.m3u', 'w' do |f|
  music_names.each do |music|
    f.write music + "\n"
  end
end

puts 'Success!'

#writing files