# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://plasmodic.github.io/ecto_opencv"
SRC_URI="https://github.com/ros-gbp/ecto_opencv-release/archive/release/kinetic/ecto_opencv/0.7.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/ecto
    ros-kinetic/boost
    ros-kinetic/opencv_candidate

"
DEPEND="${RDEPEND}
    ros-kinetic/ecto
    ros-kinetic/boost
    ros-kinetic/opencv_candidate

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
