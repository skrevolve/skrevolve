#!/bin/bash

SOURCE_DIR="$HOME/skrevolve/wiki/src/md"          # md 파일 위치
OUTPUT_DIR="$HOME/skrevolve/wiki/src/html"        # html 출력 위치
TEMPLATE_FILE="$HOME/skrevolve/wiki/src/html/template.html"
INDEX_FILE="$HOME/skrevolve/wiki/src/md/index.md" # index.md 위치

# pandoc 체크
if ! command -v pandoc &> /dev/null; then
    echo "pandoc이 설치되어 있지 않습니다."
    exit 1
fi

# 출력 디렉토리 확인 및 생성
mkdir -p "$OUTPUT_DIR"

# md 파일을 찾아서 변환
find "$SOURCE_DIR" -name "*.md" | while read file; do
    # 출력 파일 경로 생성
    relative_path=${file#$SOURCE_DIR/}
    output="$OUTPUT_DIR/${relative_path%.md}.html"
    
    echo "Converting: $file -> $output"
    
    # 출력 디렉토리 생성
    mkdir -p "$(dirname "$output")"

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

echo "모든 변환이 완료되었습니다."