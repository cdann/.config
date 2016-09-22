ln -is $HOME/conf/mycolors ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
ln -is $HOME/conf/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -is $HOME/conf/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
echo "import urllib.request,os,hashlib; h = '261dd1222b4693ce6d4f85f9c827ac06' + '6d5ab8ebdd020086947172a8a1356bb6'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)" | pbcopy
cat $HOME/conf/readme.sublimetext
#echo ${0%/*}
