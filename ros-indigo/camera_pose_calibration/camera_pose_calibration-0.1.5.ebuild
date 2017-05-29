# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Camera pose calibration using the OpenCV asymmetric circles pattern."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/delftrobotics/camera_pose_calibration-release/archive/release/indigo/camera_pose_calibration/0.1.5-0.tar.gz"

LICENSE="Apache 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/cv_bridge
    ros-indigo/tf_conversions
    ros-indigo/visualization_msgs
    ros-indigo/cmake_modules
    ros-indigo/pcl_ros
    ros-indigo/message_generation
    ros-indigo/sensor_msgs
    ros-indigo/roscpp
    ros-indigo/nodelet
    ros-indigo/message_runtime
    ros-indigo/image_transport
    ros-indigo/eigen_conversions
    ros-indigo/tf
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
