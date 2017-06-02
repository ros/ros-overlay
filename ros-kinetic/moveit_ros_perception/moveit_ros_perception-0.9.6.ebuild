# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Components of MoveIt connecting to perception"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_perception/0.9.6-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/cv_bridge
    ros-kinetic/image_transport
    ros-kinetic/message_filters
    ros-kinetic/moveit_core
    ros-kinetic/moveit_msgs
    ros-kinetic/octomap
    ros-kinetic/pluginlib
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/tf
    ros-kinetic/tf_conversions
    ros-kinetic/urdf
    media-libs/freeglut
    media-libs/glew
    media-libs/mesa
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    dev-cpp/eigen
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
