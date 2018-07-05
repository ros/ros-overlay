# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A viewer for the SLAM component of roboception based on ROS and PCL"
HOMEPAGE="https://wiki.ros.org/rc_cloud_accumulator"
SRC_URI="https://github.com/roboception-gbp/${PN}-release/archive/release/melodic/${PN}/1.0.4-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/std_srvs
	ros-melodic/tf2
	ros-melodic/tf2_msgs
	ros-melodic/tf2_ros
	sci-libs/pcl
	sci-libs/vtk[qt5,rendering]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
