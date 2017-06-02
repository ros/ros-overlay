# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Mobile robot simulator http://rtv.github.com/Stage"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/stage-release/archive/release/kinetic/stage/4.1.1-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/catkin
    x11-libs/gtk+
    =x11-libs/fltk-1*
    media-libs/libjpeg-turbo
    media-libs/mesa
"
DEPEND="${RDEPEND}
    dev-util/cmake
    sys-devel/libtool
    virtual/pkgconfig
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
