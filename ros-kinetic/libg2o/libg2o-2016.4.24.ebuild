# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://github.com/RainerKuemmerle/g2o"
SRC_URI="https://github.com/ros-gbp/libg2o-release/archive/release/kinetic/libg2o/2016.4.24-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/boost
    ros-kinetic/suitesparse
    ros-kinetic/catkin
    ros-kinetic/eigen
    ros-kinetic/opengl

"
DEPEND="${RDEPEND}
    ros-kinetic/suitesparse
    ros-kinetic/boost
    ros-kinetic/eigen
    ros-kinetic/opengl

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
