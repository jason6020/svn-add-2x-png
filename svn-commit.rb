
if ARGV.size != 1
  printf("Need Right Input")
  exit
end

$dirPath = ARGV[0].to_s

Dir.foreach($dirPath) do |file|

  if (file == "." || file == "..")
    next
  end

  if /2x.png/ =~ file
    commitFile = file + "@"
    printf(commitFile + "\n")
    svnFile = "svn add " + commitFile
    system(svnFile)
  end
end

