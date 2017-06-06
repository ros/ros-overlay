# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="image_pipeline fills the gap between getting raw images from a camera driver and"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/image_pipeline/1.12.20-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/camera_calibration
    ros-lunar/depth_image_proc
    ros-lunar/image_proc
    ros-lunar/image_publisher
    ros-lunar/image_rotate
    ros-lunar/image_view
    ros-lunar/stereo_image_proc
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DCATKIN_BUILD_BINARY_PATCKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}/build
    make install || die
}
