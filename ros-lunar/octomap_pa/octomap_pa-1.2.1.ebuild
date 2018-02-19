# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ProAut octomap package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/TUC-ProAut/ros_octomap-release/archive/release/lunar/${PN}/1.2.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/laser_geometry
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/octomap_msgs
	ros-lunar/octomap_ros
	ros-lunar/parameter_pa
	ros-lunar/pcl_conversions
	ros-lunar/pcl_ros
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
