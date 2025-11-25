# Put your source image somewhere, e.g. ~/Pictures/myFolderIcon.png
# Create a temporary iconset folder
mkdir -p /tmp/myIcon.iconset

folderImagePath=$(osascript -e 'POSIX path of (choose file)')

# Resize the PNG to the sizes macOS likes (optional but gives crisp results)
#    Here we generate 16×16, 32×32, 128×128, 256×256, 512×512, 1024×1024
sips -z 16 16   "$folderImagePath" --out /tmp/myIcon.iconset/icon_16x16.png
sips -z 32 32   "$folderImagePath" --out /tmp/myIcon.iconset/icon_16x16@2x.png
sips -z 32 32   "$folderImagePath" --out /tmp/myIcon.iconset/icon_32x32.png
sips -z 64 64   "$folderImagePath" --out /tmp/myIcon.iconset/icon_32x32@2x.png
sips -z 128 128 "$folderImagePath" --out /tmp/myIcon.iconset/icon_128x128.png
sips -z 256 256 "$folderImagePath" --out /tmp/myIcon.iconset/icon_128x128@2x.png
sips -z 256 256 "$folderImagePath" --out /tmp/myIcon.iconset/icon_256x256.png
sips -z 512 512 "$folderImagePath" --out /tmp/myIcon.iconset/icon_256x256@2x.png
sips -z 512 512 "$folderImagePath" --out /tmp/myIcon.iconset/icon_512x512.png
sips -z 1024 1024 "$folderImagePath" --out /tmp/myIcon.iconset/icon_512x512@2x.png

outputName=$(dirname "$folderImagePath")/customFolderIcon.icns

# Turn the iconset into a single .icns file
iconutil -c icns /tmp/myIcon.iconset -o "$outputName"

# Clean up the temporary folder (optional)
rm -rf /tmp/myIcon.iconset
