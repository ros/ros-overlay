# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_recognition_utils/1.1.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/image_geometry
    ros-kinetic/std_msgs
    ros-kinetic/pcl_msgs
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/eigen_conversions
    ros-kinetic/yaml-cpp
    ros-kinetic/geometry_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/tf2_ros
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/jsk_topic_tools
    ros-kinetic/python-skimage
    ros-kinetic/pcl_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/cython
    ros-kinetic/tf2_ros
    ros-kinetic/std_msgs
    ros-kinetic/pcl_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/eigen_conversions
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
    ros-kinetic/yaml-cpp
    ros-kinetic/image_geometry
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/jsk_topic_tools
    ros-kinetic/tf_conversions
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
