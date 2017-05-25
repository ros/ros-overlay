# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/roseus_tutorials"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus_tutorials/1.6.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/image_proc
    ros-kinetic/visualization_msgs
    ros-kinetic/opencv_apps
    ros-kinetic/pr2eus
    ros-kinetic/ar_track_alvar
    ros-kinetic/posedetection_msgs
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/checkerboard_detector
    ros-kinetic/image_view2

"
DEPEND="${RDEPEND}
    ros-kinetic/roseus

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
