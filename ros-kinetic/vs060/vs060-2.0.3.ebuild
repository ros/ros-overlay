# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="<p>This package provides <a href=\"http://goo.gl/kL0vnf\">ORiN</a>-based co[...]"
HOMEPAGE="http://wiki.ros.org/vs060"
SRC_URI="https://github.com/start-jsk/denso-release/archive/release/kinetic/${PN}/2.0.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/moveit_commander
	ros-kinetic/moveit_ros_planning
	ros-kinetic/roscpp
	ros-kinetic/roslang
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
