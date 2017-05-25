# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wg-perception.github.io/transparent_objects"
SRC_URI="https://github.com/ros-gbp/object_recognition_transparent_objects-release/archive/release/kinetic/object_recognition_transparent_objects/0.4.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/proj
    ros-kinetic/ecto_opencv
    ros-kinetic/ecto
    ros-kinetic/object_recognition_core
    ros-kinetic/pcl_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/object_recognition_core
    ros-kinetic/ecto
    ros-kinetic/proj
    ros-kinetic/pcl_ros

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
