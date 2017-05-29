# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Node/nodelet combination to transform sensor_msgs::Imu data from one frame into "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/imu_pipeline-release/archive/release/indigo/imu_transformer/0.2.2-0.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/tf2
    ros-indigo/geometry_msgs
    ros-indigo/sensor_msgs
    ros-indigo/roslaunch
    ros-indigo/roscpp
    ros-indigo/nodelet
    ros-indigo/tf2_ros
    ros-indigo/tf2_sensor_msgs
    ros-indigo/message_filters
    ros-indigo/topic_tools
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
