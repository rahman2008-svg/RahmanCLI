#!/data/data/com.termux/files/usr/bin/bash

PROJECT_FILE="rahman.json"

project_exists() {
    [ -f "$PROJECT_FILE" ]
}

project_name() {
    grep '"name"' "$PROJECT_FILE" | cut -d '"' -f4
}

project_type() {
    grep '"type"' "$PROJECT_FILE" | cut -d '"' -f4
}

project_version() {
    grep '"version"' "$PROJECT_FILE" | cut -d '"' -f4
}

project_author() {
    grep '"author"' "$PROJECT_FILE" | cut -d '"' -f4
}

project_build() {
    grep '"build"' "$PROJECT_FILE" | cut -d '"' -f4
}

project_run() {
    grep '"run"' "$PROJECT_FILE" | cut -d '"' -f4
}
