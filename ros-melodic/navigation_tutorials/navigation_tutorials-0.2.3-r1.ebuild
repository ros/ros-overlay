# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Navigation related tutorials."
HOMEPAGE="http://www.ros.org/wiki/navigation_tutorials"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.2.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/laser_scan_publisher_tutorial
	ros-melodic/navigation_stage
	ros-melodic/odometry_publisher_tutorial
	ros-melodic/point_cloud_publisher_tutorial
	ros-melodic/robot_setup_tf_tutorial
	ros-melodic/roomba_stage
	ros-melodic/simple_navigation_goals_tutorial
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
