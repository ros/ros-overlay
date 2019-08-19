# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta-package containing interfaces for using ROS with <a href=\"https://ign[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/osrf/${PN}-release/archive/release/melodic/${PN}/0.7.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ros1_ign_bridge
	ros-melodic/ros1_ign_gazebo_demos
	ros-melodic/ros1_ign_image
	ros-melodic/ros1_ign_point_cloud
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
