# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS-Industrial support for ABB manipulators \(metapackage\)."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/abb-release/archive/release/indigo/abb/1.2.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/abb_driver
	ros-indigo/abb_irb2400_moveit_config
	ros-indigo/abb_irb2400_moveit_plugins
	ros-indigo/abb_irb2400_support
	ros-indigo/abb_irb5400_support
	ros-indigo/abb_irb6600_support
	ros-indigo/abb_irb6640_moveit_config
	ros-indigo/abb_irb6640_support
	ros-indigo/abb_resources
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
