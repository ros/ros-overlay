# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The rotors_gazebo_plugins package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/rotors_simulator-release/archive/release/indigo/rotors_gazebo_plugins/2.1.1-0.tar.gz"

LICENSE="ASL 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/std_srvs
    ros-indigo/roscpp
    ros-indigo/rosbag
    ros-indigo/gazebo_ros
    ros-indigo/mav_msgs
    ros-indigo/geometry_msgs
    ros-indigo/octomap_msgs
    ros-indigo/octomap_ros
    ros-indigo/rotors_comm
    ros-indigo/octomap
    ros-indigo/tf
    ros-indigo/cv_bridge
    ros-indigo/rotors_control
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    ros-indigo/cmake_modules
    dev-libs/protobuf
    sci-electronics/gazebo
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
