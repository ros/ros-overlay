# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The advanced_robotics package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/vislab-tecnico-lisboa/ekf_localization-release/archive/release/indigo/ekf_localization/0.0.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/bfl
	ros-indigo/laser_geometry
	ros-indigo/nav_msgs
	ros-indigo/pcl_ros
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/tf_conversions
	ros-indigo/visualization_msgs
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roscpp
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
