# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides a specialized joint_trajectory_controller that can be[...]"
HOMEPAGE="http://ros.org/wiki/pilz_control"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/${PN}/0.5.18-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_interface
	ros-melodic/controller_manager
	ros-melodic/joint_trajectory_controller
	ros-melodic/moveit_core
	ros-melodic/moveit_ros_planning
	ros-melodic/pilz_msgs
	ros-melodic/roscpp
	ros-melodic/std_srvs
	test? ( ros-melodic/code_coverage )
	test? ( ros-melodic/geometry_msgs )
	test? ( ros-melodic/pilz_testutils )
	test? ( ros-melodic/pilz_utils )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	test? ( ros-melodic/tf2 )
	test? ( ros-melodic/tf2_geometry_msgs )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
