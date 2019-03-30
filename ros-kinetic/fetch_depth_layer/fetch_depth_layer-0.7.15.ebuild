# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The fetch_depth_layer package"
HOMEPAGE="http://docs.fetchrobotics.com/perception.html"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/${PN}/0.7.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/costmap_2d
	ros-kinetic/cv_bridge
	ros-kinetic/image_transport
	ros-kinetic/nav_msgs
	ros-kinetic/opencv_candidate
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
