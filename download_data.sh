#!/bin/bash

urls=(
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b109379b&path=/V1/validation-video.zip&fileName=validation-video.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b109379c&path=/V1/validation-annotation.zip&fileName=validation-annotation.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b109379d&path=/V1/training-video.zip&fileName=training-video.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b109379e&path=/V1/training-annotation.zip&fileName=training-annotation.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b109379f&path=/V1/test-video.zip&fileName=test-video.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937a0&path=/V1/1003-keyframe.zip&fileName=1003-keyframe.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937a1&path=/V1/1003_f.zip&fileName=1003_f.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937a2&path=/V1/1003_e.zip&fileName=1003_e.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937a3&path=/V1/1003_d.zip&fileName=1003_d.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937a4&path=/V1/1003_c.zip&fileName=1003_c.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937a5&path=/V1/1003_b.zip&fileName=1003_b.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937a6&path=/V1/1003_a.zip&fileName=1003_a.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937a7&path=/V1/1003_9.zip&fileName=1003_9.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937a8&path=/V1/1003_8.zip&fileName=1003_8.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937a9&path=/V1/1003_7.zip&fileName=1003_7.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937aa&path=/V1/1003_6.zip&fileName=1003_6.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937ab&path=/V1/1003_5.zip&fileName=1003_5.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937ac&path=/V1/1003_4.zip&fileName=1003_4.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937ad&path=/V1/1003_3.zip&fileName=1003_3.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937ae&path=/V1/1003_2.zip&fileName=1003_2.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937af&path=/V1/1003_0.zip&fileName=1003_0.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937b0&path=/V1/1003_1.zip&fileName=1003_1.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937b1&path=/V1/1002_e.zip&fileName=1002_e.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937b2&path=/V1/1002-keyframe.zip&fileName=1002-keyframe.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937b3&path=/V1/1002_c.zip&fileName=1002_c.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937b4&path=/V1/1002_a.zip&fileName=1002_a.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937b5&path=/V1/1002_8.zip&fileName=1002_8.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937b6&path=/V1/1002_6.zip&fileName=1002_6.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937b7&path=/V1/1002_4.zip&fileName=1002_4.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937b8&path=/V1/1002_2.zip&fileName=1002_2.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937b9&path=/V1/1002_0.zip&fileName=1002_0.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937ba&path=/V1/1001-keyframe.zip&fileName=1001-keyframe.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937bb&path=/V1/1001_e.zip&fileName=1001_e.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937bc&path=/V1/1001_c.zip&fileName=1001_c.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937bd&path=/V1/1001_a.zip&fileName=1001_a.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937be&path=/V1/1001_6.zip&fileName=1001_6.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937bf&path=/V1/1001_8.zip&fileName=1001_8.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937c0&path=/V1/1001_4.zip&fileName=1001_4.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937c1&path=/V1/1001_2.zip&fileName=1001_2.zip"
"https://download.scidb.cn/download?fileId=601b96a0d0628e70b10937c2&path=/V1/1001_0.zip&fileName=1001_0.zip"
)

echo "Starting download of ${#urls[@]} files..."

for url in "${urls[@]}"; do
    # Extract the fileName parameter from the URL to use as the local filename
    filename=$(echo "$url" | sed -n 's/.*fileName=\([^&]*\).*/\1/p') # or grep -oP 'fileName=\K[^&]+' can also be used for linux
    
    echo "Downloading: $filename"
    
    curl -L "$url" -o "$filename"
    
    if [ $? -eq 0 ]; then
        echo "Successfully downloaded $filename"
    else
        echo "Failed to download $filename"
    fi
done

echo "All downloads complete."

