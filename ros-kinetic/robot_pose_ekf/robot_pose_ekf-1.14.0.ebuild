# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The Robot Pose EKF package is used to estimate the 3D pose of a robot, based on "
HOMEPAGE="http://wiki.ros.org/robot_pose_ekf"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/robot_pose_ekf/1.14.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/bfl
	ros-kinetic/geometry_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/rostest
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

