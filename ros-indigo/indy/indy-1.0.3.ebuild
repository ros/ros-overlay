# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS-Industrial support for Indy manipulators \(metapackage\)."
HOMEPAGE="http://wiki.neuromeka.net/index.php?title=ROS_Indy"
SRC_URI="https://github.com/neuromeka-robotics/ros_${PN}-release/archive/release/indigo/${PN}/1.0.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/indy5_description
	ros-indigo/indy5_moveit_config
	ros-indigo/indy7_description
	ros-indigo/indy7_moveit_config
	ros-indigo/indy_driver
	ros-indigo/indyrp2_description
	ros-indigo/indyrp2_moveit_config
	ros-indigo/indyrp_description
	ros-indigo/indyrp_moveit_config
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
