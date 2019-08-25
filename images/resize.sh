doodle_scale='20'
doodle_width='100'
doodle_height='60'
profile_scale='40'

#convert gumby-2011-hp.jpg -resize $doodle_scale% gumby.png
#convert lunareclipse11-hp.png -resize $doodle_scale% lunar.png
#convert startrek2012-hp.jpg -resize $doodle_scale% startrek.png
#convert halloween-2011-hp.jpg -resize $doodle_scale% halloween.png

convert gumby-2011-hp.jpg -resize ${doodle_width}x${doodle_height} -gravity Center -extent ${doodle_width}x${doodle_height} gumby.png
convert lunareclipse11-hp.png -resize ${doodle_width}x${doodle_height} -gravity Center -extent ${doodle_width}x${doodle_height} lunar.png
convert startrek2012-hp.jpg -resize ${doodle_width}x${doodle_height} -gravity Center -extent ${doodle_width}x${doodle_height} startrek.png
convert halloween-2011-hp.jpg -resize ${doodle_width}x${doodle_height} -gravity Center -extent ${doodle_width}x${doodle_height} halloween.png


convert github-orig.png -resize ${profile_scale}x${profile_scale} github.png
convert codepen-orig.png -resize ${profile_scale}x${profile_scale} codepen.png 
convert stackoverflow-orig.png -resize ${profile_scale}x${profile_scale} stackoverflow.png 
convert docker-orig.png -crop 200x175+30-20 -gravity Center -extent 200x200 -resize ${profile_scale}x${profile_scale} docker.png 
convert codewars-orig.png -crop 180x180-0-0 -resize ${profile_scale}x${profile_scale} codewars.png 
convert hackerrank-orig.png -resize ${profile_scale}x${profile_scale} hackerrank.png
convert linkedin-orig.png -resize ${profile_scale}x${profile_scale} linkedin.png
convert csacademy-orig.png -resize ${profile_scale}x${profile_scale} csacademy.png
