# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
	 An incremental laser scan matcher, using Andrea Censi\'s Canonica[...]"
HOMEPAGE="http://wiki.ros.org/laser_scan_matcher"
SRC_URI="https://github.com/ros-gbp/scan_tools-release/archive/release/melodic/${PN}/0.3.3-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-3.0-only )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/csm
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/nodelet
	ros-melodic/pcl_conversions
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/tf
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
