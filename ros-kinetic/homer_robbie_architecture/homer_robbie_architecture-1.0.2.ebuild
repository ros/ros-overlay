# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.uni-koblenz.de/robbie/homer_robbie_architecture/repository/archive.tar.gz?ref=release/kinetic/homer_robbie_architecture/1.0.2-3"

LICENSE="LGPL-v2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/libopencv-dev
    ros-kinetic/boost
    ros-kinetic/roscpp
    ros-kinetic/tinyxml
    ros-kinetic/opengl

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/opengl
    ros-kinetic/libopencv-dev
    ros-kinetic/cmake_modules
    ros-kinetic/tinyxml
    ros-kinetic/boost

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
