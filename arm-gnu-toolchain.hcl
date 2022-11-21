description = "GNU ARM embedded toolchain"
test = "arm-none-eabi-gcc --version"
strip = 1
binaries = ["bin/*"]
env = {
  "GCC_EXEC_PREFIX": "${root}/lib/gcc/",
}

// Current releases, see https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads

version "11.3.rel1" {
  platform "darwin" {
    source = "https://developer.arm.com/-/media/Files/downloads/gnu/${version}/binrel/arm-gnu-toolchain-${version}-darwin-x86_64-arm-none-eabi.tar.xz"
  }

  platform "linux" "amd64" {
    source = "https://developer.arm.com/-/media/Files/downloads/gnu/${version}/binrel/arm-gnu-toolchain-${version}-x86_64-arm-none-eabi.tar.xz"
  }
}

// Older releases, see https://developer.arm.com/downloads/-/gnu-rm

version "10.3-2021.10" {
  platform "darwin" {
    source = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/${version}/gcc-arm-none-eabi-${version}-mac.tar.bz2"
  }

  platform "linux" "amd64" {
    source = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/${version}/gcc-arm-none-eabi-${version}-x86_64-linux.tar.bz2"
  }
}

version "10.2020.4" {
  platform "darwin" {
    source = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-mac.tar.bz2"
  }

  platform "linux" "amd64" {
    source = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2"
  }
}

sha256sums = {
  "https://developer.arm.com/-/media/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2": "21134caa478bbf5352e239fbc6e2da3038f8d2207e089efc96c3b55f1edcd618",
  "https://developer.arm.com/-/media/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-mac.tar.bz2": "bed12de3565d4eb02e7b58be945376eaca79a8ae3ebb785ec7344e7e2db0bdc0",
  "https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2": "97dbb4f019ad1650b732faffcc881689cedc14e2b7ee863d390e0a41ef16c9a3",
  "https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-mac.tar.bz2": "fb613dacb25149f140f73fe9ff6c380bb43328e6bf813473986e9127e2bc283b",
  "https://developer.arm.com/-/media/Files/downloads/gnu/11.3.rel1/binrel/arm-gnu-toolchain-11.3.rel1-x86_64-arm-none-eabi.tar.xz": "d420d87f68615d9163b99bbb62fe69e85132dc0a8cd69fca04e813597fe06121",
  "https://developer.arm.com/-/media/Files/downloads/gnu/11.3.rel1/binrel/arm-gnu-toolchain-11.3.rel1-darwin-x86_64-arm-none-eabi.tar.xz": "826353d45e7fbaa9b87c514e7c758a82f349cb7fc3fd949423687671539b29cf"
}
