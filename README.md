# tracker-checker
Checks the list of torrent trackers to see which are inactive.

Before using this tool you need to install a Perl module like this:

    cpan -i IO::Socket::PortState

Add a entry to your crontab like this:

    1 */12 * * * /root/tracker-checker/tracker-checker
