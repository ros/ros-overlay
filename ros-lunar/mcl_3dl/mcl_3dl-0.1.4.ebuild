# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="3-D/6-DOF localization for mobile robots with 3-D LIDAR\(s\)"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/${PN}-release/archive/release/lunar/${PN}/0.1.4-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/mcl_3dl_msgs
	ros-lunar/nav_msgs
	ros-lunar/pcl_ros
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf2
	ros-lunar/tf2_geometry_msgs
	ros-lunar/tf2_ros
	ros-lunar/tf2_sensor_msgs
	ros-lunar/visualization_msgs
	test? ( ros-lunar/roslint )
	test? ( ros-lunar/rostest )
	test? ( ros-lunar/rosunit )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
