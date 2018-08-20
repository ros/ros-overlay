# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The adi_driver package"
HOMEPAGE="http://wiki.ros.org/adi_driver"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/indigo/${PN}/1.0.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/imu_filter_madgwick
	ros-indigo/roscpp
	ros-indigo/rqt_plot
	ros-indigo/rviz
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
	ros-indigo/xacro
	test? ( ros-indigo/roslaunch )
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
