# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="3-D/6-DOF localization for mobile robots with 3-D LIDAR\(s\)"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/${PN}-release/archive/release/indigo/${PN}/0.1.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/mcl_3dl_msgs
	ros-indigo/nav_msgs
	ros-indigo/pcl_ros
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf2
	ros-indigo/tf2_geometry_msgs
	ros-indigo/tf2_ros
	ros-indigo/tf2_sensor_msgs
	ros-indigo/visualization_msgs
	test? ( ros-indigo/roslint )
	test? ( ros-indigo/rostest )
	test? ( ros-indigo/rosunit )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
