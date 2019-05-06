# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="voice_text \(www.voicetext.jp\)"
HOMEPAGE="http://ros.org/wiki/voice_text"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/${PN}/2.1.11-2.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="HOYA License"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/dynamic_reconfigure
	ros-lunar/message_runtime
	ros-lunar/sound_play
	app-i18n/nkf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
	ros-lunar/roscpp
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
