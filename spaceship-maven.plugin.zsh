#
# Maven
#
# Apache Maven is a software project management and comprehension tool.
# Link: https://maven.apache.org/

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_MAVEN_SHOW="${SPACESHIP_MAVEN_SHOW=true}"
SPACESHIP_MAVEN_ASYNC="${SPACESHIP_MAVEN_ASYNC=true}"
SPACESHIP_MAVEN_PREFIX="${SPACESHIP_MAVEN_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_MAVEN_SUFFIX="${SPACESHIP_MAVEN_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_MAVEN_SYMBOL="${SPACESHIP_MAVEN_SYMBOL="𝑚 "}"
SPACESHIP_MAVEN_DEFAULT_VERSION="${SPACESHIP_MAVEN_DEFAULT_VERSION=""}"
SPACESHIP_MAVEN_COLOR="${SPACESHIP_MAVEN_COLOR="yellow"}"

# ------------------------------------------------------------------------------
# Utils
# ------------------------------------------------------------------------------

spaceship::maven::find_pom() {
  local root="$1"

  while [ "$root" ] && [ ! -f "$root/pom.xml" ]; do
    root="${root%/*}"
  done

  print "$root"
}

spaceship::maven::find_maven_wrapper() {
  local root="$1"

  while [ "$root" ] && [ ! -f "$root/mvnw" ]; do
    root="${root%/*}"
  done

  print "$root"
}

spaceship::maven::version() {
  local maven_exe="$1" maven_version_output maven_version

  maven_version_output=$("$maven_exe" --version 2>/dev/null)
  maven_version=$(echo "$maven_version_output" | awk '{ if ($2 ~ /^Maven/) { print "v" $3 } }')

  print "$maven_version"
}

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show current version of gradle.
spaceship_maven() {
  [[ $SPACESHIP_MAVEN_SHOW == false ]] && return

  local maven_dir maven_exe

  if maven_dir=$(spaceship::maven::find_maven_wrapper "$(pwd -P)") && [[ -n "$maven_dir" ]]; then
    maven_exe="$maven_dir/mvnw"
  elif spaceship::exists mvn && maven_dir=$(spaceship::maven::find_pom "$(pwd -P)") && [[ -n "$maven_dir" ]]; then
    maven_exe="mvn"
  else
    return
  fi

  local maven_version

  maven_version=$(spaceship::maven::version "$maven_exe")

  [[ "$maven_version" == "$SPACESHIP_MAVEN_DEFAULT_VERSION" ]] && return

  spaceship::section \
    "$SPACESHIP_MAVEN_COLOR" \
    "$SPACESHIP_MAVEN_PREFIX" \
    "$SPACESHIP_MAVEN_SYMBOL$maven_version" \
    "$SPACESHIP_MAVEN_SUFFIX"
}
