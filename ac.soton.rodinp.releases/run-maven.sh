#!/bin/bash
###############################################################################
# Copyright (c) 2020 University of Southampton.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
#     University of Southampton - initial API and implementation
###############################################################################
#
#  Since Rodin 3.5, Java 11 is required for building.
#
minJavaVersion=11

# Use the template script from https://gist.github.com/neatshell/5283811
# Declare the number of mandatory args
margs=0 # We do not have any mandatory arguments at the moment.

# Script name should be the 0th-argument
script=$0

function usage {
    echo -e "usage: $script [OPTION]\n"
}

function example {
    echo -e "example: $script -rc 1"
    echo -e "               Build a release candidate RC1"
}

function help {
  usage
    echo -e "MANDATORY:"
    echo -e "OPTION:"
    echo -e "  -e,  --errors                    Produce Maven execution error messages"
    echo -e "  -h,  --help                      Prints this help"
    echo -e "  -rc,  --release-candidate  n     Build a release candidate RCn"
    echo -e "  -st,  --skip-tests               Skip tests"
    echo -e "  -X,  --debug                     Produce Maven execution debug output"
    echo -e ""
  example
}

# Copied from https://gist.github.com/neatshell/5283811
# Ensures that the number of passed args are at least equals
# to the declared number of mandatory args.
# It also handles the special case of the -h or --help arg.
function margs_precheck {
    if [ $2 ] && [ $1 -lt $margs ]; then
        if [ $2 == "--help" ] || [ $2 == "-h" ]; then
            help
            exit
        else
            usage
            example
            exit 1 # error
        fi
    fi
}

# Ensures that all the mandatory args are not empty
function margs_check {
    if [ $# -lt $margs ]; then
        usage
        example
        exit 1 # error
    fi
}

margs_precheck $# $1

# Default values for optional arguments
RC=""    # Release candidate tag
DEBUG="" # produce debug information (empty to disable)
ERROR="" # Produce error information (empty to disable)

# Args while-loop
while [ "$1" != "" ];
do
    case $1 in
    -e   | --errors  )
                                    ERROR="-e"
                                    ;;
    -h   | --help  )
                                    help
                                    exit
                                    ;;
    -rc  | --release-candidate  )
                                    shift
                                    RC="-RC$1"
                                    ;;
    -st  | --skip-tests  )
                                    SKIP_TESTS="-DskipTests"
                                    ;;
    -X   | --debug  )
                                    DEBUG="-X"
                                    ;;
    *)
                                    echo "$script: illegal option $1"
                                    usage
                                    example
                                    exit 1 # error
                                    ;;
    esac
    shift
done

# Pass here your mandatory args for check
margs_check

# Check Java version, Maven searches in JAVA_HOME first
if [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
    echo "Found java executable in JAVA_HOME"
    _java="$JAVA_HOME/bin/java"
else
    echo "Using java from PATH"
    _java=java
fi
if [[ "$_java" ]]; then
    version=$("$_java" -version 2>&1 | grep 'version' | sed 's/.*version .*\.\(.*\)\..*/\1/; 1q')
    if [[ "$version" -eq "0" ]]; then
        version=$("$_java" -version 2>&1 | grep 'version' | sed 's/.*version \"\(.*\)\..*\..*/\1/; 1q')
    fi
    echo "Java version: $version"
    if [[ "$version" -lt "$minJavaVersion" ]]; then
        echo "Java $minJavaVersion is required"
        exit 1
    fi
else
    echo "No Java executable found in PATH or JAVA_HOME"
    exit 1
fi

mvn clean verify $ERROR $DEBUG $SKIP_TESTS -Dtopdir=$(pwd)/.. # -fae|-fn
