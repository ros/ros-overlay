# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="gundam_rx78_gazebo contains launch scripts for simulating the GUNDAM RX-78 [...]"
HOMEPAGE="http://wiki.ros.org/gundam_rx78_gazebo"
SRC_URI="https://github.com/gundam-global-challenge/gundam_robot-release/archive/release/kinetic/${PN}/0.0.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/fake_localization
	ros-kinetic/gazebo_plugins
	ros-kinetic/gazebo_ros
	ros-kinetic/gazebo_ros_control
	ros-kinetic/gundam_rx78_control
	ros-kinetic/gundam_rx78_description
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/roslint )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
