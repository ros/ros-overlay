# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Controller for a four wheel steering mobile base."
HOMEPAGE="http://ros.org/wiki/four_wheel_steering_controller"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/${PN}/0.13.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/controller_interface
	ros-kinetic/four_wheel_steering_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/realtime_tools
	ros-kinetic/tf
	ros-kinetic/urdf_geometry_parser
	test? ( ros-kinetic/controller_manager )
	test? ( ros-kinetic/rosgraph_msgs )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/std_srvs )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
