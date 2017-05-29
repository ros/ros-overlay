# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="hector_worldmodel_msgs is a message package to comes with the hector_worldmodel stack.
     The messages can be used to send percepts from images (hector_worldmodel_msgs/ImagePercept) or other sources
     (hector_worldmodel_msgs/PosePercept) to the hector_object_tracker node. The tracker publishes model updates as
     hector_worldmodel_msgs/Object messages and latches the whole model state as a hector_worldmodel_msgs/ObjectModel message."
HOMEPAGE="http://ros.org/wiki/hector_worldmodel_msgs"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_worldmodel-release/archive/release/kinetic/hector_worldmodel_msgs/0.3.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
"
DEPEND="${RDEPEND}
    ros-kinetic/message_generation
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
