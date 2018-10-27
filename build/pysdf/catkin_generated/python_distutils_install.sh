#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/samuel/Documents/projetInt/src/pysdf"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/samuel/Documents/projetInt/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/samuel/Documents/projetInt/install/lib/python2.7/dist-packages:/home/samuel/Documents/projetInt/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/samuel/Documents/projetInt/build" \
    "/usr/bin/python" \
    "/home/samuel/Documents/projetInt/src/pysdf/setup.py" \
    build --build-base "/home/samuel/Documents/projetInt/build/pysdf" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/samuel/Documents/projetInt/install" --install-scripts="/home/samuel/Documents/projetInt/install/bin"
