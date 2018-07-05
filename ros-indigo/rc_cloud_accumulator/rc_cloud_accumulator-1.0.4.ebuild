# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A viewer for the SLAM component of roboception based on ROS and PCL"
HOMEPAGE="https://wiki.ros.org/rc_cloud_accumulator"
SRC_URI="https://github.com/roboception-gbp/${PN}-release/archive/release/indigo/${PN}/1.0.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/pcl_ros
	ros-indigo/roscpp
	ros-indigo/std_srvs
	ros-indigo/tf2
	ros-indigo/tf2_msgs
	ros-indigo/tf2_ros
	sci-libs/pcl
	sci-libs/vtk[qt5,rendering]
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
