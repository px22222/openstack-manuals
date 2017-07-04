#!/bin/bash -e

mkdir -p publish-docs

# Set this to a sensible value if not set by OpenStack CI.
if [ -z "$ZUUL_REFNAME" ] ; then
    ZUUL_REFNAME="master"
fi

# This marker is needed for infra publishing.
# Note for stable branches, this needs to be the top of each manual.
MARKER_TEXT="Project: $ZUUL_PROJECT Ref: $ZUUL_REFNAME Build: $ZUUL_UUID Revision: $ZUUL_NEWREV"

LINKCHECK=""
PDF_OPTION=""
while [[ $# > 0 ]] ; do
    option="$1"
    case $option in
        --linkcheck)
            LINKCHECK="--linkcheck"
            ;;
        --pdf)
            PDF_OPTION="--pdf"
            ;;
    esac
    shift
done

# PDF targets for Install guides are dealt in build-install-guides-rst.sh
PDF_TARGETS=( 'arch-design'\
              'ha-guide' 'image-guide'\
              'ops-guide' 'user-guide' )

# Note that these guides are only build for master branch
for guide in admin-guide arch-design cli-reference contributor-guide \
    ha-guide image-guide ops-guide user-guide; do
    if [[ ${PDF_TARGETS[*]} =~ $guide ]]; then
        tools/build-rst.sh doc/$guide --build build \
            --target $guide $LINKCHECK $PDF_OPTION
    else
        tools/build-rst.sh doc/$guide --build build \
            --target $guide $LINKCHECK
    fi
done

# Draft guides
# This includes guides that we publish from stable branches
# as versioned like the ha-guide
for guide in ha-guide-draft config-reference; do
    TARGET="draft/$guide"
    if [[ ${PDF_TARGETS[*]} =~ $guide ]]; then
        tools/build-rst.sh doc/$guide --build build \
            --target "$TARGET" $LINKCHECK $PDF_OPTION
    else
        tools/build-rst.sh doc/$guide --build build \
            --target "$TARGET" $LINKCHECK
    fi
    # For stable branches, we need to mark the specific guides.
    # TODO(jaegerandi): Enable for stable branches after branch is
    # created:
    #if [ "$ZUUL_REFNAME" != "master" ] ; then
    #    echo $MARKER_TEXT > publish-docs/draft/$TARGET/.root-marker
    #fi
done

tools/build-install-guides-rst.sh $LINKCHECK $PDF_OPTION

# For master, just mark the root
if [ "$ZUUL_REFNAME" = "master" ] ; then
    echo $MARKER_TEXT > publish-docs/.root-marker
fi
