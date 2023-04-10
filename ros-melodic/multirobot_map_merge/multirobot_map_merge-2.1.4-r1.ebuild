# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Merging multiple maps without knowledge of initial\
  positions of robots."
HOMEPAGE="http://wiki.ros.org/multirobot_map_merge"
SRC_URI="https://github.com/hrnr/m-explore-release/archive/release/melodic/${PN}/2.1.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/image_geometry
	ros-melodic/map_msgs
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/tf2_geometry_msgs
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
