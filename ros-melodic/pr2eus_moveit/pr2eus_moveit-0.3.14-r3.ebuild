# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pr2eus_moveit"
HOMEPAGE="http://ros.org/wiki/pr2eus_moveit"
SRC_URI="https://github.com/tork-a/jsk_pr2eus-release/archive/release/melodic/${PN}/0.3.14-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/control_msgs
	ros-melodic/moveit_msgs
	ros-melodic/pr2eus
	ros-melodic/roseus
	test? ( ros-melodic/moveit_planners_ompl )
	test? ( ros-melodic/pr2_gazebo )
	test? ( ros-melodic/pr2_moveit_config )
	test? ( ros-melodic/pr2_moveit_plugins )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
