mkdir -p bin
for path in tests/*.s; do
  file=$(basename -- "$path")
  base="${file%.*}"
  echo Building bin/$base.gb
  printf "[objects]\nbin/%s\n" $base.o > bin/$base.link
  wla-gb -Itests -DDMG -o bin/$base.o $path
  wlalink bin/$base.link bin/$base.gb
  rm bin/$base.link
  rm bin/$base.o
done
echo Done
