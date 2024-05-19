# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_REMOVE_MODULES_LIST=(FindFreetype FindDoxygen FindZLIB)

inherit cmake flag-o-matic

DESCRIPTION="Object-oriented Graphics Rendering Engine"
HOMEPAGE="https://www.ogre3d.org/"
SRC_URI="https://github.com/OGRECave/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT public-domain"
SLOT="$(ver_cut 1-2)"
KEYWORDS="~amd64 ~x86"

IUSE="+cache debug doc double-precision egl examples fine-granularity +freeimage
	+opengl profile tools"

# USE flags that do not work, as their options aren't ported, yet.
#      cg
#      gles2
#      mobile

RESTRICT="test" #139905

RDEPEND="
	dev-games/ois
	dev-libs/rapidjson
	dev-libs/zziplib
	media-libs/freetype:2
	x11-libs/libX11
	x11-libs/libXaw
	x11-libs/libXrandr
	x11-libs/libXt
	egl? ( media-libs/mesa[egl(+)] )
	freeimage? ( media-libs/freeimage )
	opengl? (
		virtual/glu
		virtual/opengl
	)
	tools? ( dev-libs/tinyxml[stl] )
"
# Dependencies for USE flags that do not work, yet.
#	cg? ( media-gfx/nvidia-cg-toolkit )
#	gles2? ( media-libs/mesa[gles2] )

DEPEND="
	${RDEPEND}
	x11-base/xorg-proto
"
BDEPEND="
	virtual/pkgconfig
	doc? ( app-doc/doxygen )
"

PATCHES=(
	"${FILESDIR}/${PV}-riscv64-support.patch"
	"${FILESDIR}/${PV}-ogre-next-rename.patch"
	"${FILESDIR}/${PV}-ogre-next-rename-samples.patch"
	"${FILESDIR}/${PV}-vulkan-remove-sharedrc.patch"
	"${FILESDIR}/${PV}-vulkan-look-for-validationlayers.patch"
	"${FILESDIR}/${PV}-versioned-header-dir.patch"
	"${FILESDIR}/${PV}-versioned-pc-files.patch"
	"${FILESDIR}/${PV}-install-pc-files-to-lib-multiarch.patch"
	"${FILESDIR}/${PV}-vulkan_needs_glslang_spirv.diff"
	"${FILESDIR}/${PV}-vulkan-fix-cast.patch"
	"${FILESDIR}/${PV}-fix-gpu-in-wsl.patch"
)

src_prepare() {
	sed -i \
		-e "s:share/OGRE/docs:share/doc/${PF}:" \
		Docs/CMakeLists.txt || die

	# In this series, the CMAKE_BUILD_TARGET is hard-wired to the
	# installation. And only Release, Debug, MinSizeRel and RelWithDebInfo
	# are supported.
	sed -i \
		-e "s/$(usex debug Debug Release)/Gentoo/g" \
		CMake/InstallResources.cmake \
		CMake/Utils/OgreConfigTargets.cmake \
		|| die

	# Fix some path issues
	cmake_src_prepare
}

src_configure() {
	local mycmakeargs=(
		# --debugger
		# --debugger-pipe=/tmp/ogre-next-2.3.1-cmake-debug
		-DOGRE_USE_NEW_PROJECT_NAME=yes
		-DOGRE_LIB_DIRECTORY="$(get_libdir)/OGRE-${SLOT}"
		-DOGRE_BUILD_COMPONENT_HLMS=yes
		-DOGRE_BUILD_COMPONENT_HLMS_PBS=yes
		-DOGRE_BUILD_COMPONENT_HLMS_PBS_MOBILE=no
		-DOGRE_BUILD_COMPONENT_HLMS_UNLIT=yes
		-DOGRE_BUILD_COMPONENT_HLMS_UNLIT_MOBILE=no
		-DOGRE_BUILD_COMPONENT_PLANAR_REFLECTIONS=yes
		-DOGRE_BUILD_COMPONENT_SCENE_FORMAT=yes
		-DOGRE_BUILD_PLATFORM_NACL=no
		-DOGRE_BUILD_RENDERSYSTEM_GL3PLUS=$(usex opengl)
		-DOGRE_BUILD_RENDERSYSTEM_GLES2=no
		-DOGRE_BUILD_SAMPLES2=$(usex examples)
		-DOGRE_BUILD_TESTS=$(usex debug)
		-DOGRE_BUILD_TOOLS=$(usex tools)
		-DOGRE_CONFIG_ALLOCATOR=$(usex debug 5 1)
		-DOGRE_CONFIG_ENABLE_FINE_LIGHT_MASK_GRANULARITY=$(usex fine-granularity)
		-DOGRE_CONFIG_ENABLE_FREEIMAGE=$(usex freeimage)
		-DOGRE_CONFIG_ENABLE_GL_STATE_CACHE_SUPPORT=$(usex cache)
		-DOGRE_CONFIG_ENABLE_JSON=yes
		-DOGRE_CONFIG_MEMTRACK_DEBUG=$(usex debug)
		-DOGRE_CONFIG_MEMTRACK_RELEASE=no
		-DOGRE_CONFIG_THREADS=0
		-DOGRE_CONFIG_THREAD_PROVIDER=std
		-DOGRE_FULL_RPATH=yes
		-DOGRE_INSTALL_DOCS=$(usex doc)
		-DOGRE_INSTALL_SAMPLES=$(usex examples)
		-DOGRE_INSTALL_SAMPLES_SOURCE=$(usex examples)
		-DOGRE_PROFILING_PROVIDER=$(usex profile none internal)
		-DOGRE_USE_BOOST=no
		-DOGRE_CONFIG_DOUBLE=$(usex double-precision)
		-DOGRE_SIMD_NEON=$(usex double-precision no yes)
		-DOGRE_SIMD_SSE2=$(usex double-precision no yes)
	)

	# GLES2 is not supported, yet
	#	-DOGRE_BUILD_COMPONENT_HLMS_PBS=$(         usex mobile no yes)
	#	-DOGRE_BUILD_COMPONENT_HLMS_PBS_MOBILE=$(  usex mobile)
	#	-DOGRE_BUILD_COMPONENT_HLMS_UNLIT=$(       usex mobile no yes)
	#	-DOGRE_BUILD_COMPONENT_HLMS_UNLIT_MOBILE=$(usex mobile)
	#	-DOGRE_BUILD_RENDERSYSTEM_GLES2=$(usex gles2)

	# The CgFxScriptLoader doesn't seem to be completely ported, yet.
	# USE flag disabled.
	mycmakeargs+=(
		-DOGRE_BUILD_PLUGIN_CG=no
	)

	# These components are off by default, as they might not be ported, yet.
	# When advancing to a newer commit, try whether any of the disabled
	# components can be activated now.
	mycmakeargs+=(
		-DOGRE_BUILD_COMPONENT_PAGING=no
		-DOGRE_BUILD_COMPONENT_PROPERTY=no
		-DOGRE_BUILD_COMPONENT_RTSHADERSYSTEM=no
		-DOGRE_BUILD_RTSHADERSYSTEM_CORE_SHADERS=no
		-DOGRE_BUILD_RTSHADERSYSTEM_EXT_SHADERS=no
		-DOGRE_BUILD_COMPONENT_TERRAIN=no
		-DOGRE_BUILD_COMPONENT_VOLUME=no
	)

	# In Release builds the system moans about unknown flags. Lets help!
	if use debug; then
		append-flags -DOGRE_DEBUG_MODE=1 -DDEBUG=1 -D_DEBUG=1
	else
		append-flags -DOGRE_DEBUG_MODE=0
	fi

	# Take out the warning about deprecated copy, as Ogre emits thousands of
	# those. But using a deprecated way of doing things isn't an error and
	# mainly of interest for developers.
	# (The warning is part of -Wextra and only effects C++ compilation.)
	append-cppflags $(test-flags-CXX -Wno-deprecated-copy)

	# The same with the old ways of using memset(0...) on objects. It is
	# no longer assumed to be a good idea, but a warning about it isn't
	# of any value to the user. (And it happens many times in Ogre.)
	append-cppflags $(test-flags-CXX -Wno-class-memaccess)

	cmake_src_configure
}

src_install() {
	cmake_src_install

	CONFIGDIR=/etc/OGRE-Next
	SHAREDIR=/usr/share/OGRE-Next

	# plugins and resources are the main configuration
	insinto "${CONFIGDIR}"
	doins "${BUILD_DIR}"/inst/bin/release/plugins.cfg
	doins "${BUILD_DIR}"/inst/bin/release/plugins_tools.cfg
	doins "${BUILD_DIR}"/inst/bin/release/resources.cfg
	doins "${BUILD_DIR}"/inst/bin/release/resources2.cfg
	dosym "${CONFIGDIR}"/plugins.cfg "${SHAREDIR}"/plugins.cfg
	dosym "${CONFIGDIR}"/plugins_tools.cfg "${SHAREDIR}"/plugins_tools.cfg
	dosym "${CONFIGDIR}"/resources.cfg "${SHAREDIR}"/resources.cfg
	dosym "${CONFIGDIR}"/resources2.cfg "${SHAREDIR}"/resources2.cfg

	# These are only for the Samples
	# if use examples ; then
	# 	insinto "${SHAREDIR}"
	# 	doins "${BUILD_DIR}"/bin/samples.cfg
	# fi

	if use tools ; then
		doman "${FILESDIR}"/OgreMeshTool.1
	fi
}
