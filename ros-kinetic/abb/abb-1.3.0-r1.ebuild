# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROSIndustrial support for ABB manipulators metapackage"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb/1.3.0-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/abb_driver
	ros-kinetic/abb_irb2400_moveit_config
	ros-kinetic/abb_irb2400_moveit_plugins
	ros-kinetic/abb_irb2400_support
	ros-kinetic/abb_irb4400_support
	ros-kinetic/abb_irb5400_support
	ros-kinetic/abb_irb6600_support
	ros-kinetic/abb_irb6640_moveit_config
	ros-kinetic/abb_irb6640_support
	ros-kinetic/abb_resources
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

