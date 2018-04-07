#!/bin/bash -e

SONAR_BASE_URL=http://sonar.devillo.no/sonar/profiles/export
function fetch_style {
  echo "Fetching $1"
  mkdir -p "src/main/resources/codestyle/$1"
  curl "$SONAR_BASE_URL?language=java&name=$1&format=$2" > "src/main/resources/codestyle/$1/$2.xml"
}

fetch_style nav-mod checkstyle
fetch_style nav-mod findbugs
fetch_style nav-mod pmd
