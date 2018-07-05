# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A viewer for the SLAM component of roboception based on ROS and PCL"
HOMEPAGE="https://wiki.ros.org/rc_cloud_accumulator"
SRC_URI="https://github.com/roboception-gbp/${PN}-release/archive/release/kinetic/${PN}/1.0.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	ros-kinetic/std_srvs
	ros-kinetic/tf2
	ros-kinetic/tf2_msgs
	ros-kinetic/tf2_ros
	sci-libs/pcl
	sci-libs/vtk[qt5,rendering]
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
