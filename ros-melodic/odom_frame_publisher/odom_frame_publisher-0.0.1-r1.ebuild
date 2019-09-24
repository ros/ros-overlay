# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The odom_frame_publisher package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OUXT-Polaris/${PN}-release/archive/release/melodic/${PN}/0.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/quaternion_operation
	ros-melodic/roscpp
	ros-melodic/rosdoc_lite
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_msgs
	ros-melodic/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
