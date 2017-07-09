# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Navigation related tutorials.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/navigation_tutorials-release/archive/release/indigo/navigation_tutorials/0.2.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/laser_scan_publisher_tutorial
	ros-indigo/navigation_stage
	ros-indigo/odometry_publisher_tutorial
	ros-indigo/point_cloud_publisher_tutorial
	ros-indigo/robot_setup_tf_tutorial
	ros-indigo/roomba_stage
	ros-indigo/simple_navigation_goals_tutorial
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

