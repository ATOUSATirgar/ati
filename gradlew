

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# set -o errexit
# set -o nounset

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"

warn () {
    echo "$*"
}

die () {
    echo
    echo "$*"
    echo
    exit 1
}

# Attempt to set MAX_FD_LIMIT
if [ "$MAX_FD" != "maximum" ]; then
    ulimit -n $MAX_FD || warn "Could not set max file descriptor limit: $MAX_FD"
fi

# Determine the location of the script
PRG="$0"
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`"/$link"
    fi
done

SAVED="$(pwd)"
cd "$(dirname "$PRG")" >/dev/null
APP_HOME="$(pwd -P)"
cd "$SAVED" >/dev/null

# Locate the gradle wrapper jar file
WRAPPER_JAR="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

# Run the wrapper
exec "$JAVA_HOME/bin/java" $DEFAULT_JVM_OPTS -classpath "$WRAPPER_JAR" org.gradle.wrapper.GradleWrapperMain "$@"
