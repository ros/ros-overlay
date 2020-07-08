# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The prbt_ikfast_manipulator_plugin package"
HOMEPAGE="https://wiki.ros.org/prbt_ikfast_manipulator_plugin"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/${PN}/0.5.18-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/eigen_conversions
	ros-melodic/moveit_core
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/tf2_kdl
	test? ( ros-melodic/code_coverage )
	test? ( ros-melodic/moveit_ros_planning )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/tf2_eigen
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
