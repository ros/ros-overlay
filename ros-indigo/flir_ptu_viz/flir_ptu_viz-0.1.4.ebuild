# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Launchfiles and rviz configs to assist with visualizing the FLIR PTUs.'"
HOMEPAGE="http://wiki.ros.org/flir_ptu_driver"
SRC_URI="https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/indigo/flir_ptu_viz/0.1.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/flir_ptu_description
	ros-indigo/joint_state_publisher
	ros-indigo/robot_state_publisher
	ros-indigo/rviz
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

