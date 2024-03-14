#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Fungsi untuk mengirim data ke API menggunakan curl
send_data() {
  local endpoint="https://jsonplaceholder.typicode.com/posts"
  local title="$1"
  local body="$2"
  local userId="$3"

  # Membuat request body dalam format JSON
  local data=$(
    cat <<EOF
      {
        "title": "$title",
        "body": "$body",
        "userId": $userId
      }
EOF
  )

  # Kirim request POST dengan curl
  response=$(curl -s -X POST -H "Content-Type: application/json" -d "$data" "$endpoint")

  # Menampilkan respons dari server
  echo "$response"
  echo -e "${GREEN}Done${NC}"

}

# User memasukkan judul, body, dan user ID
read -p "Enter Post Title: " title
read -p "Enter Post Body: " body
read -p "Enter Post user ID: " userId

# Memanggil fungsi send_data dengan parameter yang dimasukkan oleh user
send_data "$title" "$body" "$userId"
