# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Motion limiter package for collision prevention"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation-release/archive/release/melodic/${PN}/0.9.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/neonavigation_common
	ros-melodic/pcl_conversions
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/safety_limiter_msgs
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf2_ros
	ros-melodic/tf2_sensor_msgs
	ros-melodic/xmlrpcpp
	test? ( ros-melodic/nav_msgs )
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/tf2_geometry_msgs )
	dev-cpp/eigen
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
