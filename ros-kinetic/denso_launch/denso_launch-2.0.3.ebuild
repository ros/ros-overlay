# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Although the package name might indicate that it only could only contain ge[...]"
HOMEPAGE="http://wiki.ros.org/denso_launch"
SRC_URI="https://github.com/start-jsk/denso-release/archive/release/kinetic/${PN}/2.0.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/checkerboard_detector
	ros-kinetic/control_msgs
	ros-kinetic/denso_ros_control
	ros-kinetic/vs060_moveit_config
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
