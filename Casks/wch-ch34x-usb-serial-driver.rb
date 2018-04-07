cask 'wch-ch34x-usb-serial-driver' do
  version '1.4'
  sha256 '032e85afc2dfeaba6e77637718749e3af381892305c2c02c12d1cd2bb3585bc3'

  url 'https://github.com/DecaturMakers/CH340_drivers-Linux-Mac-Windows/raw/master/drivers/macos/CH34x_Install_V1.4.pkg'
  name 'WCH USB serial driver for CH340/CH341 (unofficial release)'
  homepage 'https://github.com/DecaturMakers/CH340_drivers-Linux-Mac-Windows'

  license :gratis

  pkg 'CH34x_Install_V1.4.pkg'

  uninstall pkgutil: 'com.wch.usbserial',
            kext:    'com.wch.usbserial',
            delete:  [
                       '/System/Library/Extensions/usb.kext',
                       '/Library/Extensions/usbserial.kext',
                     ]

  caveats <<-EOS.undent
    This driver was sourced from the OEM website. Discussion:
    https://github.com/DecaturMakers/CH340_drivers-Linux-Mac-Windows
  EOS
end
