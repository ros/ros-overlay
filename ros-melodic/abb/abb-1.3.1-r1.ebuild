# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS-Industrial support for ABB manipulators \(metapackage\)."
HOMEPAGE="http://ros.org/wiki/abb"
SRC_URI="https://github.com/ros-industrial-release/${PN}-release/archive/release/melodic/${PN}/1.3.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/abb_driver
	ros-melodic/abb_irb2400_moveit_config
	ros-melodic/abb_irb2400_moveit_plugins
	ros-melodic/abb_irb2400_support
	ros-melodic/abb_irb4400_support
	ros-melodic/abb_irb5400_support
	ros-melodic/abb_irb6600_support
	ros-melodic/abb_irb6640_moveit_config
	ros-melodic/abb_irb6640_support
	ros-melodic/abb_resources
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
