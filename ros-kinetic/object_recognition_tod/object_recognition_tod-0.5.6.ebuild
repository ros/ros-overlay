# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wg-perception.github.io/tod/"
SRC_URI="https://github.com/ros-gbp/object_recognition_tod-release/archive/release/kinetic/object_recognition_tod/0.5.6-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/ecto_opencv
    ros-kinetic/ecto
    ros-kinetic/object_recognition_core
    ros-kinetic/ecto_openni
    ros-kinetic/opencv_candidate

"
DEPEND="${RDEPEND}
    ros-kinetic/cmake_modules
    ros-kinetic/ecto
    ros-kinetic/object_recognition_core
    ros-kinetic/eigen
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
