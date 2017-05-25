# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.irs.uji.es/uwsim/"
SRC_URI="https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/kinetic/uwsim/1.4.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/urdf
    ros-kinetic/resource_retriever
    ros-kinetic/osg_utils
    ros-kinetic/pcl_ros
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/opengl
    ros-kinetic/osg_markers
    ros-kinetic/interactive_markers
    ros-kinetic/uwsim_osgbullet
    ros-kinetic/boost
    ros-kinetic/libxml++-2.6
    ros-kinetic/osg_interactive_markers
    ros-kinetic/robot_state_publisher
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/tf
    ros-kinetic/uwsim_osgocean
    ros-kinetic/uwsim_osgworks
    ros-kinetic/xacro
    ros-kinetic/pluginlib
    ros-kinetic/underwater_sensor_msgs
    ros-kinetic/uwsim_bullet
    ros-kinetic/kdl_parser
    ros-kinetic/libopenscenegraph
    ros-kinetic/geometry_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/urdf
    ros-kinetic/resource_retriever
    ros-kinetic/osg_utils
    ros-kinetic/pcl_ros
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/opengl
    ros-kinetic/osg_markers
    ros-kinetic/interactive_markers
    ros-kinetic/uwsim_osgbullet
    ros-kinetic/boost
    ros-kinetic/libxml++-2.6
    ros-kinetic/osg_interactive_markers
    ros-kinetic/robot_state_publisher
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/tf
    ros-kinetic/uwsim_osgocean
    ros-kinetic/uwsim_osgworks
    ros-kinetic/xacro
    ros-kinetic/pluginlib
    ros-kinetic/underwater_sensor_msgs
    ros-kinetic/uwsim_bullet
    ros-kinetic/kdl_parser
    ros-kinetic/libopenscenegraph
    ros-kinetic/geometry_msgs

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
