# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="<p>Packages in the denso suite provide controller functionality for Denso\'[...]"
HOMEPAGE="http://wiki.ros.org/denso"
SRC_URI="https://github.com/start-jsk/${PN}-release/archive/release/kinetic/${PN}/2.0.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/denso_launch
	ros-kinetic/denso_ros_control
	ros-kinetic/vs060
	ros-kinetic/vs060_gazebo
	ros-kinetic/vs060_moveit_config
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
