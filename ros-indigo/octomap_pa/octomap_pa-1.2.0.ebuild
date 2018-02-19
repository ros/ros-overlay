# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ProAut octomap package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/TUC-ProAut/ros_octomap-release/archive/release/indigo/${PN}/1.2.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/laser_geometry
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
	ros-indigo/octomap_msgs
	ros-indigo/octomap_ros
	ros-indigo/parameter_pa
	ros-indigo/pcl_conversions
	ros-indigo/pcl_ros
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
