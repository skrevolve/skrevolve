#!/bin/bash

# 변환할 디렉토리 경로
SOURCE_DIR="$HOME/skrevolve/wiki"
TEMPLATE_FILE="$HOME/skrevolve/wiki/template.html"

# pandoc이 설치되어 있는지 확인
if ! command -v pandoc &> /dev/null; then
   echo "pandoc이 설치되어 있지 않습니다."
   exit 1
fi

# 모든 .md 파일 변환
find "$SOURCE_DIR" -name "*.md" | while read file; do
    output="${file%.md}.html"
    echo "Converting: $file -> $output"

    # 템플릿 적용하여 변환
    pandoc "$file" \
        --template="$TEMPLATE_FILE" \
        --metadata title="$(basename "$file" .md)" \
        -s -o "$output"

    if [ $? -eq 0 ]; then
        echo "Success: $output"
    else
        echo "Error converting: $file"
    fi
done
